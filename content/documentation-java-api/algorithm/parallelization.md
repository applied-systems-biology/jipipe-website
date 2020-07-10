+++
title = "Parallelization"
weight = 35
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

The current version of JIPipe supports parallelization via a fixed thread pool.
Parallelization is done on an **per-algorithm-level**, meaning that
the algorithms are responsible for providing parallelization capabilities.

The included base algorithms [ACAQIteratingAlgorithm](/external/apidocs/org/hkijena/jipipe/api/algorithm/ACAQIteratingAlgorithm.html), [ACAQSimpleIteratingAlgorithm](/external/apidocs/org/hkijena/jipipe/api/algorithm/ACAQSimpleIteratingAlgorithm.html), and [ACAQMergingAlgorithm](/external/apidocs/org/hkijena/jipipe/api/algorithm/ACAQMergingAlgorithm.html)
already come with support for parallelization that **has to be manually enabled via code**.
The inherit from [ACAQParallelizedAlgorithm](/external/apidocs/org/hkijena/jipipe/api/algorithm/ACAQParallelizedAlgorithm.html) and
completely apply parallelization automatically.

# Automated parallelization (ACAQParallelizedAlgorithm)

The automated parallelization is controlled by three factors:

1. If the user enabled parallelization via a parameter
2. If parallelization is supported
3. In how many batches the data is separated

To enable parallelization, let `supportsParallelization()` return `true` (defaults to false).
This will parallelize the processing of data interfaces (see previous chapters).
As sometimes third-party algorithms apply their own parallelization, you can restrict how
many threads are allocated by JIPipe by setting `getParallelizationBatchSize`.

For example, there are many image analysis algorithm implementations that use `Runtime.getRuntime().availableProcessors()`
for their own parallelization. To ensure that only as many threads as the user selected are allocated, return
`Runtime.getRuntime().availableProcessors()` from `getParallelizationBatchSize()`. The implementation then will adapt
to this value.

```java
public class MyAlgorithm extends ACAQIteratingAlgorithm {

  /*
  Enable parallelization. By default false.
  */
  @Override
  isParallelizationEnabled() {
    return true;
  }

  /*
  Assume that each runIteration() executes a third-party algorithm with its own parallelization based on Runtime.getRuntime().availableProcessors() threads.
  Tell this to the JIPipe implementation to limit the number of threads.
  */
  @Override
  getParallelizationBatchSize() {
    return Runtime.getRuntime().availableProcessors();
  }
}
```

# Manual parallelization

You can choose to do your own parallelization (leave `isParallelizationEnabled()` to return `false`).
Each `ACAQAlgorithm` object has a method `getThreadPool()` that returns the thread pool assigned to the current run.
Please note that this thread pool can be null.

The thread pool provides methods to schedule workloads. If the number of threads is set to 1, the thread pool
will schedule the workload into the **current thread**. You also have raw access to the ExecutorService behind the
thread pool - just do not forget that the service can be null.
