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

The ImageJ integration library integrates common data types from ImageJ into JIPipe:

* Multi-dimensional images (ImagePlus). The standard output file format are TIFF files.
* Result tables. They are serialized to CSV files.
* Region of interest (ROI Manager). JIPipe handles ROI as \*.zip files.

The ImageJ data types are marked as accessible from outside JIPipe, meaning that
algorithms that only use those types can be executed [standalone]({{< ref "/documentation/imagej-integration" >}})

# Image data types

Various ImageJ algorithms only work on data with a specific color type, or dimensionality.
To make it easier for algorithms to specifiy which types are suitable, the JIPipe standard library
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
ImgPlusColor --> ImgPlusColorRGB["RGB color image (nD)"]
ImgPlusColor --> ImgPlusColorHSB["HSB color image (nD)"]
ImgPlusColor --> ImgPlusColorLAB["LAB color image (nD)"]
{{< /mermaid >}}

The graph above shows the structure for non-dimensional (nD) images.
This structure is repeated for 2D, 3D, ... 5D images.

## Color spaces

The standard library comes with support for different color spaces and supports automated
conversion between them.

Each image stores the color space (allowing for example to remember the color space
of a HSB image stored inside a generic image).
Color space conversions are automatically applied (e.g. from RGB to greyscale).
While trivial for specific color types (like RGB color), JIPipe falls back to following
color spaces for generic colors (e.g. greyscale image):

| Color space          | Fallback colorspace    |
| -------------------- | ---------------------- |
| All greyscale images | 32-bit float greyscale |
| All colored images   | RGB color              |

Please note that if the color space information is lost, RGB is used as fallback.
Color conversion nodes in `Images > Colors > Convert`


# Frequency space image data types

The JIPipe standard library contains color types that are intended to hold frequency-space (FFT) data.
While the standard library only provides methods to handle 2D FFT, there are 3D, ..., 5D data types
available for future extensions.

{{% notice warning %}}
We rely on the mechanisms provided by ImageJ. For example, the ImageJ FFT generates a 8-bit greyscale power spectrum image and
attaches data to the image instance. JIPipe has no special methods to load and save the FFT data, aside from the image data itself.
We recommend to generate FFT data within the pipeline to generate the correct data.
{{% /notice %}}

# ImageJ algorithms

The standard library provides a selection of common ImageJ algorithms as JIPipe algorithm nodes.
Those algorithms wrap around the respective ImageJ methods and have the same feature set, aside
from some changes that are required to make algorithms usable in a batch-environment like JIPipe.

You can find a list of all algorithms via the {{< icon name="fa-question-circle-o" size="medium" >}} **Help** menu on the top right corner and the item <code>Algorithm compendium</code>.

## Macro node

If an algorithm is not available as JIPipe node, you can use the [Macro node]({{< ref "/documentation/standard-library/macro-node" >}}).
