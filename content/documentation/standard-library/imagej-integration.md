+++
title = "ImageJ integration"
description = "This library provides integration of ImageJ data types, as well as common ImageJ algorithms."
weight = 20
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

The ImageJ integration library integrates common data types from ImageJ into ACAQ5:

* Multi-dimensional images (ImagePlus). The standard output file format are TIFF files.
* Result tables. They are serialized to CSV files.
* Region of interest (ROI Manager). ACAQ5 handles ROI as \*.zip files.

The ImageJ data types are marked as accessible from outside ACAQ5, meaning that
algorithms that only use those types can be executed [standalone](/documentation/imagej-integration)

# Image data types

Various ImageJ algorithms only work on data with a specific color type, or dimensionality.
To make it easier for algorithms to specifiy which types are suitable, the ACAQ5 standard library
introduces various image sub-types (e.g. 8-bit greyscale 3D image).

The library is set up to automatically convert any image data type into any other image data type.
During this conversion, the data types automatically attempt to satisfy their constraints or
raise an error. The conversion automatically converts a lower-dimensional image into a higher-dimensional image
(e.g. 2D to 3D), but not the other way around.

The image data types are organized in the following way:

{{<mermaid align="left">}}
graph LR;
ImgPlus["Image (nD)"] --> ImgPlusGreyscale["Greyscale image (nD)"]
ImgPlusGreyscale --> ImgPlusGreyscale8U["8-bit greyscale image (nD)"]
ImgPlusGreyscale8U --> ImgPlusGreyscaleMask["8-bit mask (nD)"]
ImgPlusGreyscale --> ImgPlusGreyscale16U["16-bit greyscale image (nD)"]
ImgPlusGreyscale --> ImgPlusGreyscale32F["32-bit float greyscale image (nD)"]
ImgPlus["Image (nD)"] --> ImgPlusColor["Color image (nD)"]
ImgPlusColor --> ImgPlusColor8U["8-bit color image (nD)"]
ImgPlusColor --> ImgPlusColorRGB["RGB color image (nD)"]
{{< /mermaid >}}

The graph above shows the structure for non-dimensional (nD) images.
This structure is repeated for 2D, 3D, ... 5D images.

Color space conversions are automatically applied (e.g. from RGB to greyscale).
While trivial for specific color types (like RGB color), ACAQ5 falls back to following
color spaces for generic colors (e.g. greyscale image):

| Color space | Fallback colorspace    |
| ----------- | ---------------------- |
| Greyscale   | 32-bit float greyscale |
| Color       | RGB color              |

# Frequency space image data types

The ACAQ5 standard library contains color types that are intended to hold frequency-space (FFT) data.
While the standard library only provides methods to handle 2D FFT, there are 3D, ..., 5D data types
available for future extensions.

{{% notice warning %}}
We rely on the mechanisms provided by ImageJ. For example, the ImageJ FFT generates a 8-bit greyscale power spectrum image and
attaches data to the image instance. ACAQ5 has no special methods to load and save the FFT data, aside from the image data itself.
We recommend to generate FFT data within the pipeline to generate the correct data.
{{% /notice %}}

# ImageJ algorithms

The standard library provides a selection of common ImageJ algorithms as ACAQ5 algorithm nodes.
Those algorithms wrap around the respective ImageJ methods and have the same feature set, aside
from some changes that are required to make algorithms usable in a batch-environment like ACAQ5.

You can find a list of all algorithms via the {{< icon name="fa-question-circle-o" size="medium" >}} **Help** menu on the top right corner and the item <code>Algorithm compendium</code>.

{{% notice tip %}}
You can run ImageJ macro code as node. The input slot names correspond to the image windows that are created. Macro nodes do not work in a headless (server) environment, so be careful
when including them.
{{% /notice %}}
