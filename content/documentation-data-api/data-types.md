+++
title = "Data types"
description = "Current list of data types available in JIPipe"
weight = 30
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

# 2D FFT Image



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>3D FFT Image</span></li>
<li><span>4D FFT Image</span></li>
<li><span>5D FFT Image</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains two image files: fht.ome.tif / fht.tif and power_spectrum.ome.tif / power_spectrum.tif, as well as a file fht_info.json. Either the OME TIFF or TIFF must be present. fht.ome.tif / fht.tif contains the FHT (float32). power_spectrum.ome.tif / power_spectrum.tif contains the power spectrum (float32). fht_info.json contains a JSON object that defines following properties: quadrant-swap-needed (boolean), original-width (integer), original-height (integer), original-bit-depth (integer; 8, 16, or 32 are valid values), power-spectrum-mean (double).

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-fft-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-fft-2d</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-fft-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-fft-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 2D Image (Color)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>2D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-2d-color</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 2D image



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-2d</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 2D image (16 bit)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>2D image</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-2d-greyscale-16u</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 2D image (8 bit)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>2D image</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>2D image (mask)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-2d-greyscale-8u</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 2D image (HSB)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-2d-color-hsb</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 2D image (LAB)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-2d-color-lab</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 2D image (RGB)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-2d-color-rgb</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 2D image (float)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>2D image</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-2d-greyscale-32f</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 2D image (greyscale)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>2D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (mask)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-2d-greyscale</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 2D image (mask)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>2D image</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-2d-greyscale-mask</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 2D pie plot

Plot that shows the amount for each category as slice in a pie.

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Plot</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Annotation table</span></li>
<li><span>GPU image</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>Results table</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

The folder contains following files:<br/><ul><li><code>plot-metadata.json</code> contains the serialized information about the plot.</li><li><code>series[Index].csv</code> contains the data of series [Index].</li></ul><br/><br/>The plot metadata JSON contains entries <code>title</code>, <code>export-width</code>,<code>export-height</code>, <code>background-color</code>, <code>grid-color</code>, <code>with-legend</code>, <code>title-font-size</code>, <code>legend-font-size</code>, <code>color-map</code>, and <code>plot-series</code>.<br/><code>plot-series</code> is mandatory and is a list of objects with each object having an object <code>metadata</code>, and a string element <code>file-name</code>. The file name must point at the corresponding <code>series[Index].csv</code> file of the series. Additional metadata in the root object and series metadata depend on the exact plot type.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/plot-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>plot-pie-2d</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/plot-data.schema.json">https://jipipe.org/schemas/datatypes/plot-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Standard plots</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# 3D FFT Image



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains two image files: fht.ome.tif / fht.tif and power_spectrum.ome.tif / power_spectrum.tif, as well as a file fht_info.json. Either the OME TIFF or TIFF must be present. fht.ome.tif / fht.tif contains the FHT (float32). power_spectrum.ome.tif / power_spectrum.tif contains the power spectrum (float32). fht_info.json contains a JSON object that defines following properties: quadrant-swap-needed (boolean), original-width (integer), original-height (integer), original-bit-depth (integer; 8, 16, or 32 are valid values), power-spectrum-mean (double).

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-fft-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-fft-3d</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-fft-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-fft-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 3D Image (Color)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>3D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-3d-color</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 3D image



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>3D Image (Color)</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-3d</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 3D image (16 bit)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>3D image</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-3d-greyscale-16u</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 3D image (8 bit)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>3D image</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>3D image (mask)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-3d-greyscale-8u</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 3D image (HSB)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-3d-color-hsb</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 3D image (LAB)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-3d-color-lab</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 3D image (RGB)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-3d-color-rgb</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 3D image (float)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>3D image</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-3d-greyscale-32f</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 3D image (greyscale)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>3D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (mask)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-3d-greyscale</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 3D image (mask)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>3D image</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-3d-greyscale-mask</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 3D pie plot

Plot that shows the amount for each category as slice in a pie.

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Plot</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Annotation table</span></li>
<li><span>GPU image</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>Results table</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

The folder contains following files:<br/><ul><li><code>plot-metadata.json</code> contains the serialized information about the plot.</li><li><code>series[Index].csv</code> contains the data of series [Index].</li></ul><br/><br/>The plot metadata JSON contains entries <code>title</code>, <code>export-width</code>,<code>export-height</code>, <code>background-color</code>, <code>grid-color</code>, <code>with-legend</code>, <code>title-font-size</code>, <code>legend-font-size</code>, <code>color-map</code>, and <code>plot-series</code>.<br/><code>plot-series</code> is mandatory and is a list of objects with each object having an object <code>metadata</code>, and a string element <code>file-name</code>. The file name must point at the corresponding <code>series[Index].csv</code> file of the series. Additional metadata in the root object and series metadata depend on the exact plot type.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/plot-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>plot-pie-3d</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/plot-data.schema.json">https://jipipe.org/schemas/datatypes/plot-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Standard plots</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# 4D FFT Image



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains two image files: fht.ome.tif / fht.tif and power_spectrum.ome.tif / power_spectrum.tif, as well as a file fht_info.json. Either the OME TIFF or TIFF must be present. fht.ome.tif / fht.tif contains the FHT (float32). power_spectrum.ome.tif / power_spectrum.tif contains the power spectrum (float32). fht_info.json contains a JSON object that defines following properties: quadrant-swap-needed (boolean), original-width (integer), original-height (integer), original-bit-depth (integer; 8, 16, or 32 are valid values), power-spectrum-mean (double).

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-fft-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-fft-4d</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-fft-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-fft-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 4D Image (Color)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>4D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-4d-color</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 4D image



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>4D Image (Color)</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-4d</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 4D image (16 bit)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>4D image</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-4d-greyscale-16u</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 4D image (8 bit)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>4D image</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>4D image (mask)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-4d-greyscale-8u</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 4D image (HSB)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-4d-color-hsb</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 4D image (LAB)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-4d-color-lab</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 4D image (RGB)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-4d-color-rgb</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 4D image (float)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>4D image</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-4d-greyscale-32f</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 4D image (greyscale)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>4D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (mask)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-4d-greyscale</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 4D image (mask)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>4D image</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-4d-greyscale-mask</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 5D FFT Image



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains two image files: fht.ome.tif / fht.tif and power_spectrum.ome.tif / power_spectrum.tif, as well as a file fht_info.json. Either the OME TIFF or TIFF must be present. fht.ome.tif / fht.tif contains the FHT (float32). power_spectrum.ome.tif / power_spectrum.tif contains the power spectrum (float32). fht_info.json contains a JSON object that defines following properties: quadrant-swap-needed (boolean), original-width (integer), original-height (integer), original-bit-depth (integer; 8, 16, or 32 are valid values), power-spectrum-mean (double).

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-fft-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-fft-5d</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-fft-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-fft-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 5D Image (Color)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>5D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-5d-color</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 5D image



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>5D Image (Color)</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-5d</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 5D image (16 bit)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>5D image</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-5d-greyscale-16u</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 5D image (8 bit)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>5D image</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>5D image (mask)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-5d-greyscale-8u</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 5D image (HSB)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-5d-color-hsb</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 5D image (LAB)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-5d-color-lab</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 5D image (RGB)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-5d-color-rgb</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 5D image (float)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>5D image</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-5d-greyscale-32f</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 5D image (greyscale)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>5D image</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (mask)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-5d-greyscale</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# 5D image (mask)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>5D image</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-5d-greyscale-mask</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# Annotation table

A table that contains data annotations and other metadata

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Results table</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>2D pie plot</span></li>
<li><span>3D pie plot</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>Histogram plot</span></li>
<li><span>Line category plot</span></li>
<li><span>Numeric table column</span></li>
<li><span>Plot</span></li>
<li><span>Results table</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>String table column</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a single *.csv file that contains the table data.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/results-table.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>annotation-table</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/results-table.schema.json">https://jipipe.org/schemas/datatypes/results-table.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Annotation data types and algorithms</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Bar category plot

Bar chart that displays categories in its X axis and colors the bars according to the group.

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Plot</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Annotation table</span></li>
<li><span>GPU image</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>Results table</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

The folder contains following files:<br/><ul><li><code>plot-metadata.json</code> contains the serialized information about the plot.</li><li><code>series[Index].csv</code> contains the data of series [Index].</li></ul><br/><br/>The plot metadata JSON contains entries <code>title</code>, <code>export-width</code>,<code>export-height</code>, <code>background-color</code>, <code>grid-color</code>, <code>with-legend</code>, <code>title-font-size</code>, <code>legend-font-size</code>, <code>color-map</code>, and <code>plot-series</code>.<br/><code>plot-series</code> is mandatory and is a list of objects with each object having an object <code>metadata</code>, and a string element <code>file-name</code>. The file name must point at the corresponding <code>series[Index].csv</code> file of the series. Additional metadata in the root object and series metadata depend on the exact plot type.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/plot-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>plot-category-bar</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/plot-data.schema.json">https://jipipe.org/schemas/datatypes/plot-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Standard plots</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Boolean input form

A form element that allows the user to input a boolean (true/false) value

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Form</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a file forms.json that stores all metadata of the current form type in JSON format.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/form-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>boolean-form</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/form-data.schema.json">https://jipipe.org/schemas/datatypes/form-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Forms</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Box plot

Box and whisker plot.

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Plot</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Annotation table</span></li>
<li><span>GPU image</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>Results table</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

The folder contains following files:<br/><ul><li><code>plot-metadata.json</code> contains the serialized information about the plot.</li><li><code>series[Index].csv</code> contains the data of series [Index].</li></ul><br/><br/>The plot metadata JSON contains entries <code>title</code>, <code>export-width</code>,<code>export-height</code>, <code>background-color</code>, <code>grid-color</code>, <code>with-legend</code>, <code>title-font-size</code>, <code>legend-font-size</code>, <code>color-map</code>, and <code>plot-series</code>.<br/><code>plot-series</code> is mandatory and is a list of objects with each object having an object <code>metadata</code>, and a string element <code>file-name</code>. The file name must point at the corresponding <code>series[Index].csv</code> file of the series. Additional metadata in the root object and series metadata depend on the exact plot type.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/plot-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>plot-box-and-whisker</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/plot-data.schema.json">https://jipipe.org/schemas/datatypes/plot-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Standard plots</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Cellpose model

A Cellpose model

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

A single file without extension that contains the Cellpose model

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/cellpose-model-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>cellpose-model</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/cellpose-model-data.schema.json">https://jipipe.org/schemas/datatypes/cellpose-model-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Cellpose integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Stringer, C., Wang, T., Michaelos, M., &amp; Pachitariu, M. (2021). Cellpose: a generalist algorithm for cellular segmentation. Nature Methods, 18(1), 100-106.</td></tr></table>

# Cellpose size model

A Cellpose size model

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

A single .npy file that contains the Cellpose size model

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/cellpose-size-model-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>cellpose-size-model</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/cellpose-size-model-data.schema.json">https://jipipe.org/schemas/datatypes/cellpose-size-model-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Cellpose integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Stringer, C., Wang, T., Michaelos, M., &amp; Pachitariu, M. (2021). Cellpose: a generalist algorithm for cellular segmentation. Nature Methods, 18(1), 100-106.</td></tr></table>

# Data

Generic data

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li>None</li></ul>

This type can be trivially converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Annotation table</span></li>
<li><span>Bar category plot</span></li>
<li><span>Boolean input form</span></li>
<li><span>Box plot</span></li>
<li><span>Cellpose model</span></li>
<li><span>Cellpose size model</span></li>
<li><span>Data table</span></li>
<li><span>Empty data</span></li>
<li><span>FFT Image</span></li>
<li><span>File</span></li>
<li><span>Folder</span></li>
<li><span>Form</span></li>
<li><span>GPU image</span></li>
<li><span>Group header form</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Integer input form</span></li>
<li><img src="/img/apps/jipipe.png"/><span>JIPipe output</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>Number input form</span></li>
<li><span>Numeric table column</span></li>
<li><span>OME Image</span></li>
<li><img src="/img/apps/omero.png"/><span>OMERO Dataset</span></li>
<li><img src="/img/apps/omero.png"/><span>OMERO Group</span></li>
<li><img src="/img/apps/omero.png"/><span>OMERO Image</span></li>
<li><img src="/img/apps/omero.png"/><span>OMERO Project</span></li>
<li><span>Output data</span></li>
<li><span>Parameters</span></li>
<li><span>Path</span></li>
<li><span>Path input form</span></li>
<li><span>Plot</span></li>
<li><span>ROI list</span></li>
<li><span>Results table</span></li>
<li><span>Row index table column</span></li>
<li><span>Selection input form</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>String</span></li>
<li><span>String table column</span></li>
<li><span>Table column</span></li>
<li><span>Text input form</span></li>
<li><span>XML</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
<li><span>Zero table column</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Annotation table</span></li>
<li><span>Bar category plot</span></li>
<li><span>Boolean input form</span></li>
<li><span>Box plot</span></li>
<li><span>Cellpose model</span></li>
<li><span>Cellpose size model</span></li>
<li><span>Data table</span></li>
<li><span>Empty data</span></li>
<li><span>FFT Image</span></li>
<li><span>File</span></li>
<li><span>Folder</span></li>
<li><span>Form</span></li>
<li><span>GPU image</span></li>
<li><span>Group header form</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Integer input form</span></li>
<li><img src="/img/apps/jipipe.png"/><span>JIPipe output</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>Number input form</span></li>
<li><span>Numeric table column</span></li>
<li><span>OME Image</span></li>
<li><img src="/img/apps/omero.png"/><span>OMERO Dataset</span></li>
<li><img src="/img/apps/omero.png"/><span>OMERO Group</span></li>
<li><img src="/img/apps/omero.png"/><span>OMERO Image</span></li>
<li><img src="/img/apps/omero.png"/><span>OMERO Project</span></li>
<li><span>Output data</span></li>
<li><span>Parameters</span></li>
<li><span>Path</span></li>
<li><span>Path input form</span></li>
<li><span>Plot</span></li>
<li><span>ROI list</span></li>
<li><span>Results table</span></li>
<li><span>Row index table column</span></li>
<li><span>Selection input form</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>String</span></li>
<li><span>String table column</span></li>
<li><span>Table column</span></li>
<li><span>Text input form</span></li>
<li><span>XML</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
<li><span>Zero table column</span></li>
</ul>

This type can be also converted from following types:

<ul><li>None</li></ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Unknown storage schema (generic data)

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/jipipe-empty-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>jipipe:data</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/jipipe-empty-data.schema.json">https://jipipe.org/schemas/datatypes/jipipe-empty-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Core</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schindelin, J.; Arganda-Carreras, I. &amp; Frise, E. et al. (2012), &quot;Fiji: an open-source platform for biological-image analysis&quot;, Nature methods 9(7): 676-682, PMID 22743772, doi:10.1038/nmeth.2019</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C., Schindelin, J., Hiner, M. &amp; Eliceiri, K. (2016). SciJava Common [Software]. https://scijava.org/. </td></tr></table>

# Data table

A table of data

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Stores a data table in the standard JIPipe format (data-table.json plus numeric slot folders)

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/jipipe-data-table.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>jipipe:data-table</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/jipipe-data-table.schema.json">https://jipipe.org/schemas/datatypes/jipipe-data-table.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Core</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schindelin, J.; Arganda-Carreras, I. &amp; Frise, E. et al. (2012), &quot;Fiji: an open-source platform for biological-image analysis&quot;, Nature methods 9(7): 676-682, PMID 22743772, doi:10.1038/nmeth.2019</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C., Schindelin, J., Hiner, M. &amp; Eliceiri, K. (2016). SciJava Common [Software]. https://scijava.org/. </td></tr></table>

# Empty data

An empty data type

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

The storage folder is empty.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/jipipe-empty-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>jipipe:empty-data</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/jipipe-empty-data.schema.json">https://jipipe.org/schemas/datatypes/jipipe-empty-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Core</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schindelin, J.; Arganda-Carreras, I. &amp; Frise, E. et al. (2012), &quot;Fiji: an open-source platform for biological-image analysis&quot;, Nature methods 9(7): 676-682, PMID 22743772, doi:10.1038/nmeth.2019</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C., Schindelin, J., Hiner, M. &amp; Eliceiri, K. (2016). SciJava Common [Software]. https://scijava.org/. </td></tr></table>

# FFT Image



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>3D FFT Image</span></li>
<li><span>4D FFT Image</span></li>
<li><span>5D FFT Image</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains two image files: fht.ome.tif / fht.tif and power_spectrum.ome.tif / power_spectrum.tif, as well as a file fht_info.json. Either the OME TIFF or TIFF must be present. fht.ome.tif / fht.tif contains the FHT (float32). power_spectrum.ome.tif / power_spectrum.tif contains the power spectrum (float32). fht_info.json contains a JSON object that defines following properties: quadrant-swap-needed (boolean), original-width (integer), original-height (integer), original-bit-depth (integer; 8, 16, or 32 are valid values), power-spectrum-mean (double).

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-fft-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-fft</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-fft-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-fft-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# File

A path to a file

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Path</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>Folder</span></li>
<li><img src="/img/apps/jipipe.png"/><span>JIPipe output</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
<li><span>Folder</span></li>
<li><img src="/img/apps/jipipe.png"/><span>JIPipe output</span></li>
<li><span>Path</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a single *.json file. The JSON data has following structure: <pre>{
    "jipipe:data-type": "[Data type ID]",
    "path": "[The path]"
}</pre>

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/path-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>file</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/path-data.schema.json">https://jipipe.org/schemas/datatypes/path-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Filesystem types and algorithms</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Folder

A path to a directory

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Path</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><img src="/img/apps/jipipe.png"/><span>JIPipe output</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>File</span></li>
<li><img src="/img/apps/jipipe.png"/><span>JIPipe output</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
<li><span>File</span></li>
<li><span>Path</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a single *.json file. The JSON data has following structure: <pre>{
    "jipipe:data-type": "[Data type ID]",
    "path": "[The path]"
}</pre>

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/path-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>folder</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/path-data.schema.json">https://jipipe.org/schemas/datatypes/path-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Filesystem types and algorithms</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Form

Data that describes a user input element.

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>Boolean input form</span></li>
<li><span>Group header form</span></li>
<li><span>Integer input form</span></li>
<li><span>Number input form</span></li>
<li><span>Path input form</span></li>
<li><span>Selection input form</span></li>
<li><span>Text input form</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a file forms.json that stores all metadata of the current form type in JSON format.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/form-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>form</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/form-data.schema.json">https://jipipe.org/schemas/datatypes/form-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Forms</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# GPU image

Image data stored on the GPU utilized by CLIJ

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpeg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>clij2-image</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>CLIJ2 integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Robert Haase, Loic Alain Royer, Peter Steinbach, Deborah Schmidt, Alexandr Dibrov, Uwe Schmidt, Martin Weigert, Nicola Maghelli, Pavel Tomancak, Florian Jug, Eugene W Myers. CLIJ: GPU-accelerated image processing for everyone. Nat Methods 17, 5-6 (2020)</td></tr></table>

# Group header form

Generates a group header element that allows to structure forms.

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Form</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a file forms.json that stores all metadata of the current form type in JSON format.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/form-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>group-header-form</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/form-data.schema.json">https://jipipe.org/schemas/datatypes/form-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Forms</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Histogram plot

Bar chart that displays the number of items for each bin. Please note that this plot requires raw values as input. A pre-defined histogram table should be rendered with an XY bar plot.

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Plot</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Annotation table</span></li>
<li><span>GPU image</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>Results table</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

The folder contains following files:<br/><ul><li><code>plot-metadata.json</code> contains the serialized information about the plot.</li><li><code>series[Index].csv</code> contains the data of series [Index].</li></ul><br/><br/>The plot metadata JSON contains entries <code>title</code>, <code>export-width</code>,<code>export-height</code>, <code>background-color</code>, <code>grid-color</code>, <code>with-legend</code>, <code>title-font-size</code>, <code>legend-font-size</code>, <code>color-map</code>, and <code>plot-series</code>.<br/><code>plot-series</code> is mandatory and is a list of objects with each object having an object <code>metadata</code>, and a string element <code>file-name</code>. The file name must point at the corresponding <code>series[Index].csv</code> file of the series. Additional metadata in the root object and series metadata depend on the exact plot type.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/plot-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>plot-histogram</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/plot-data.schema.json">https://jipipe.org/schemas/datatypes/plot-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Standard plots</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Image

An ImageJ image

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>FFT Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D pie plot</span></li>
<li><span>3D pie plot</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# Image (16 bit)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Image</span></li>
<li><span>Image (greyscale)</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-greyscale-16u</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# Image (8 bit)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Image</span></li>
<li><span>Image (greyscale)</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>Image (mask)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-greyscale-8u</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# Image (Color)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-color</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# Image (HSB)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Image</span></li>
<li><span>Image (Color)</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-color-hsb</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# Image (LAB)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Image</span></li>
<li><span>Image (Color)</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-color-lab</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# Image (RGB)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Image</span></li>
<li><span>Image (Color)</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-color-rgb</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# Image (float)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Image</span></li>
<li><span>Image (greyscale)</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-greyscale-32f</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# Image (greyscale)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Image</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (mask)</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-greyscale</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# Image (mask)



## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Image</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (greyscale)</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpg, *.png. We recommend the usage of TIFF.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-imgplus-greyscale-mask</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/imageplus-data.schema.json">https://jipipe.org/schemas/datatypes/imageplus-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# Integer input form

A form element that allows the user to input an integer number

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Form</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a file forms.json that stores all metadata of the current form type in JSON format.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/form-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>integer-form</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/form-data.schema.json">https://jipipe.org/schemas/datatypes/form-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Forms</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# JIPipe output

Output of a JIPipe run

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Folder</span></li>
<li><span>Path</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>File</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
<li><span>File</span></li>
<li><span>Folder</span></li>
<li><span>Path</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a single *.json file. The JSON data has following structure: <pre>{
    "jipipe:data-type": "[Data type ID]",
    "path": "[The path]"
}</pre>

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/path-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>jipipe-run-output</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/path-data.schema.json">https://jipipe.org/schemas/datatypes/path-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Utilities</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Json

Text in JSON format

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>String</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a single *.json file that stores the current data.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/jipipe-json-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>json</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/jipipe-json-data.schema.json">https://jipipe.org/schemas/datatypes/jipipe-json-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Strings</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# LUT

A function that converts an intensity to a RGB color value

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one file in *.json format that describes the LUT gradient stops.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/lut-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-lut</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/lut-data.schema.json">https://jipipe.org/schemas/datatypes/lut-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# Line category plot

Line chart that displays categories in its X axis and colors the lines according to the group.

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Plot</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Annotation table</span></li>
<li><span>GPU image</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>Results table</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

The folder contains following files:<br/><ul><li><code>plot-metadata.json</code> contains the serialized information about the plot.</li><li><code>series[Index].csv</code> contains the data of series [Index].</li></ul><br/><br/>The plot metadata JSON contains entries <code>title</code>, <code>export-width</code>,<code>export-height</code>, <code>background-color</code>, <code>grid-color</code>, <code>with-legend</code>, <code>title-font-size</code>, <code>legend-font-size</code>, <code>color-map</code>, and <code>plot-series</code>.<br/><code>plot-series</code> is mandatory and is a list of objects with each object having an object <code>metadata</code>, and a string element <code>file-name</code>. The file name must point at the corresponding <code>series[Index].csv</code> file of the series. Additional metadata in the root object and series metadata depend on the exact plot type.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/plot-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>plot-category-line</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/plot-data.schema.json">https://jipipe.org/schemas/datatypes/plot-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Standard plots</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Number input form

A form element that allows the user to input a real number

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Form</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a file forms.json that stores all metadata of the current form type in JSON format.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/form-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>number-form</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/form-data.schema.json">https://jipipe.org/schemas/datatypes/form-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Forms</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Numeric table column

A table column that contains numbers (64bit floating point)

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Table column</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>Annotation table</span></li>
<li><span>Results table</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a single *.csv file that contains the table data.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/results-table.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>table-column-numeric</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/results-table.schema.json">https://jipipe.org/schemas/datatypes/results-table.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Standard table operations</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr></table>

# OME Image

Image that contains additional OME-XML metadata. It can be converted into an image, a ROI list, or an XML text.

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>GPU image</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>ROI list</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one or multiple files in *.tif or *.ome.tif format. If OME TIFF is used, multiple tiff files can be present (due to the ability of OME TIFF to link them together). Although, we do recommend having multiple files, as sometimes OME TIFF can store absolute paths. If only standard TIFF files are present, only one will be loaded.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/ome-image-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-ome</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/ome-image-data.schema.json">https://jipipe.org/schemas/datatypes/ome-image-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# OMERO Dataset

An OMERO dataset ID

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a single *.json file that stores the <pre>dataset-id</pre> in a JSON object.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/omero-dataset-reference-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>omero-dataset-id</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/omero-dataset-reference-data.schema.json">https://jipipe.org/schemas/datatypes/omero-dataset-reference-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>OMERO Integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# OMERO Group

An OMERO group ID

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a single *.json file that stores the <pre>group-id</pre> in a JSON object.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/omero-group-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>omero-group-id</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/omero-group-data.schema.json">https://jipipe.org/schemas/datatypes/omero-group-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>OMERO Integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# OMERO Image

An OMERO image ID

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a single *.json file that stores the <pre>image-id</pre> in a JSON object.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/omero-image-reference-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>omero-image-id</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/omero-image-reference-data.schema.json">https://jipipe.org/schemas/datatypes/omero-image-reference-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>OMERO Integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# OMERO Project

An OMERO project ID

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a single *.json file that stores the <pre>project-id</pre> in a JSON object.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/omero-project-reference-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>omero-project-id</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/omero-project-reference-data.schema.json">https://jipipe.org/schemas/datatypes/omero-project-reference-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>OMERO Integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Output data

Output of a compartment

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

This is a structural data type. The storage folder is empty.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/jipipe-empty-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>jipipe:compartment-output</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/jipipe-empty-data.schema.json">https://jipipe.org/schemas/datatypes/jipipe-empty-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Compartment management</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Parameters

Contains algorithm parameters

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a single *.json file that stores the parameters. The JSON data is an object with keys being the parameter keys. The value is an object with two items <code>value</code> and <code>type-id</code>. <code>value</code> contains the serialized parameter value. <code>type-id</code> contains the standardized parameter type ID.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/parameters-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>parameters</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/parameters-data.schema.json">https://jipipe.org/schemas/datatypes/parameters-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Multi parameters data types</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Path

A file or folder

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>File</span></li>
<li><span>Folder</span></li>
<li><img src="/img/apps/jipipe.png"/><span>JIPipe output</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>File</span></li>
<li><span>Folder</span></li>
<li><img src="/img/apps/jipipe.png"/><span>JIPipe output</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a single *.json file. The JSON data has following structure: <pre>{
    "jipipe:data-type": "[Data type ID]",
    "path": "[The path]"
}</pre>

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/path-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>path</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/path-data.schema.json">https://jipipe.org/schemas/datatypes/path-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Filesystem types and algorithms</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Path input form

A form element that allows the user to input a path to a file or folder

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Form</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a file forms.json that stores all metadata of the current form type in JSON format.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/form-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>path-form</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/form-data.schema.json">https://jipipe.org/schemas/datatypes/form-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Forms</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Plot

A plot

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>2D pie plot</span></li>
<li><span>3D pie plot</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Histogram plot</span></li>
<li><span>Line category plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Annotation table</span></li>
<li><span>GPU image</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>Results table</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

The folder contains following files:<br/><ul><li><code>plot-metadata.json</code> contains the serialized information about the plot.</li><li><code>series[Index].csv</code> contains the data of series [Index].</li></ul><br/><br/>The plot metadata JSON contains entries <code>title</code>, <code>export-width</code>,<code>export-height</code>, <code>background-color</code>, <code>grid-color</code>, <code>with-legend</code>, <code>title-font-size</code>, <code>legend-font-size</code>, <code>color-map</code>, and <code>plot-series</code>.<br/><code>plot-series</code> is mandatory and is a list of objects with each object having an object <code>metadata</code>, and a string element <code>file-name</code>. The file name must point at the corresponding <code>series[Index].csv</code> file of the series. Additional metadata in the root object and series metadata depend on the exact plot type.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/plot-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>plot</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/plot-data.schema.json">https://jipipe.org/schemas/datatypes/plot-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Standard plots</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# ROI list

Collection of ROI

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains one file in *.roi or *.zip format. *.roi is a single ImageJ ROI. *.zip contains multiple ImageJ ROI. Please note that if multiple *.roi/*.zip are present, only one will be loaded.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/roi-list-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-roi</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/roi-list-data.schema.json">https://jipipe.org/schemas/datatypes/roi-list-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# Results table

An ImageJ table

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>Annotation table</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>Annotation table</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D pie plot</span></li>
<li><span>3D pie plot</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>Histogram plot</span></li>
<li><span>Line category plot</span></li>
<li><span>Numeric table column</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>String table column</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a single *.csv file that contains the table data.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/results-table.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>imagej-results-table</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/results-table.schema.json">https://jipipe.org/schemas/datatypes/results-table.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>ImageJ integration</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr><tr><td><strong>Additional citation</strong></td><td>Melissa Linkert, Curtis T. Rueden, Chris Allan, Jean-Marie Burel, Will Moore, Andrew Patterson, Brian Loranger, Josh Moore, Carlos Neves, Donald MacDonald, Aleksandra Tarkowska, Caitlin Sticco, Emma Hill, Mike Rossner, Kevin W. Eliceiri, and Jason R. Swedlow (2010) Metadata matters: access to image data in the real world. The Journal of Cell Biology 189(5), 777-782</td></tr></table>

# Row index table column

A table column that generates each row based on the current row index

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Table column</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

This is a structural data type. The storage folder is empty.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/jipipe-empty-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>table-column-row-index</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/jipipe-empty-data.schema.json">https://jipipe.org/schemas/datatypes/jipipe-empty-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Standard table operations</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr></table>

# Selection input form

A form element that allows the user to select one of multiple options

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Form</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a file forms.json that stores all metadata of the current form type in JSON format.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/form-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>enum-form</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/form-data.schema.json">https://jipipe.org/schemas/datatypes/form-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Forms</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Stacked bar category plot

Bar chart that displays categories in its X axis and colors the bars according to the group. Bars within the same group are stacked.

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Plot</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Annotation table</span></li>
<li><span>GPU image</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>Results table</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

The folder contains following files:<br/><ul><li><code>plot-metadata.json</code> contains the serialized information about the plot.</li><li><code>series[Index].csv</code> contains the data of series [Index].</li></ul><br/><br/>The plot metadata JSON contains entries <code>title</code>, <code>export-width</code>,<code>export-height</code>, <code>background-color</code>, <code>grid-color</code>, <code>with-legend</code>, <code>title-font-size</code>, <code>legend-font-size</code>, <code>color-map</code>, and <code>plot-series</code>.<br/><code>plot-series</code> is mandatory and is a list of objects with each object having an object <code>metadata</code>, and a string element <code>file-name</code>. The file name must point at the corresponding <code>series[Index].csv</code> file of the series. Additional metadata in the root object and series metadata depend on the exact plot type.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/plot-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>plot-category-bar-stacked</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/plot-data.schema.json">https://jipipe.org/schemas/datatypes/plot-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Standard plots</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Statistical bar category plot

Bar chart that displays categories in its X axis and colors the bars according to the group. The bar height is the mean of each condition's values. Shows an error bar.

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Plot</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Annotation table</span></li>
<li><span>GPU image</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>Results table</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

The folder contains following files:<br/><ul><li><code>plot-metadata.json</code> contains the serialized information about the plot.</li><li><code>series[Index].csv</code> contains the data of series [Index].</li></ul><br/><br/>The plot metadata JSON contains entries <code>title</code>, <code>export-width</code>,<code>export-height</code>, <code>background-color</code>, <code>grid-color</code>, <code>with-legend</code>, <code>title-font-size</code>, <code>legend-font-size</code>, <code>color-map</code>, and <code>plot-series</code>.<br/><code>plot-series</code> is mandatory and is a list of objects with each object having an object <code>metadata</code>, and a string element <code>file-name</code>. The file name must point at the corresponding <code>series[Index].csv</code> file of the series. Additional metadata in the root object and series metadata depend on the exact plot type.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/plot-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>plot-category-statistical-bar</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/plot-data.schema.json">https://jipipe.org/schemas/datatypes/plot-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Standard plots</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Statistical line category plot

Line chart that displays categories in its X axis and colors the lines according to the group. The line Y value is the mean of each condition's values. Shows an error bar.

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Plot</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Annotation table</span></li>
<li><span>GPU image</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>Results table</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

The folder contains following files:<br/><ul><li><code>plot-metadata.json</code> contains the serialized information about the plot.</li><li><code>series[Index].csv</code> contains the data of series [Index].</li></ul><br/><br/>The plot metadata JSON contains entries <code>title</code>, <code>export-width</code>,<code>export-height</code>, <code>background-color</code>, <code>grid-color</code>, <code>with-legend</code>, <code>title-font-size</code>, <code>legend-font-size</code>, <code>color-map</code>, and <code>plot-series</code>.<br/><code>plot-series</code> is mandatory and is a list of objects with each object having an object <code>metadata</code>, and a string element <code>file-name</code>. The file name must point at the corresponding <code>series[Index].csv</code> file of the series. Additional metadata in the root object and series metadata depend on the exact plot type.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/plot-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>plot-category-statistical-line</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/plot-data.schema.json">https://jipipe.org/schemas/datatypes/plot-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Standard plots</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# String

A text

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>Json</span></li>
<li><span>XML</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>Json</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a single *.txt file that stores the current string.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/string-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>string</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/string-data.schema.json">https://jipipe.org/schemas/datatypes/string-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Strings</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# String table column

A table column that contains text values

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Table column</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>Annotation table</span></li>
<li><span>Results table</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a single *.csv file that contains the table data.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/results-table.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>table-column-string</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/results-table.schema.json">https://jipipe.org/schemas/datatypes/results-table.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Standard table operations</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr></table>

# Table column

A table column

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li><span>Numeric table column</span></li>
<li><span>Row index table column</span></li>
<li><span>String table column</span></li>
<li><span>Zero table column</span></li>
</ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

This is a generic data type. The storage folder is empty.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/jipipe-empty-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>table-column</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/jipipe-empty-data.schema.json">https://jipipe.org/schemas/datatypes/jipipe-empty-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Standard table operations</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr></table>

# Text input form

A form element that allows the user to input text

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Form</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a file forms.json that stores all metadata of the current form type in JSON format.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/form-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>string-form</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/form-data.schema.json">https://jipipe.org/schemas/datatypes/form-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Forms</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# XML

Text in extended markup language (XML)

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>String</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>Json</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>2D FFT Image</span></li>
<li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>2D pie plot</span></li>
<li><span>3D FFT Image</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>3D pie plot</span></li>
<li><span>4D FFT Image</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D FFT Image</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Bar category plot</span></li>
<li><span>Box plot</span></li>
<li><span>Data</span></li>
<li><span>FFT Image</span></li>
<li><span>GPU image</span></li>
<li><span>Histogram plot</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>Line category plot</span></li>
<li><span>OME Image</span></li>
<li><span>Plot</span></li>
<li><span>Stacked bar category plot</span></li>
<li><span>Statistical bar category plot</span></li>
<li><span>Statistical line category plot</span></li>
<li><span>String</span></li>
<li><span>XY line plot</span></li>
<li><span>XY scatter plot</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

Contains a single *.xml file that stores the current data.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/xml-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>xml</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/xml-data.schema.json">https://jipipe.org/schemas/datatypes/xml-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Strings</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# XY line plot

Plot that displays the Y values against the X values.

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Plot</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Annotation table</span></li>
<li><span>GPU image</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>Results table</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

The folder contains following files:<br/><ul><li><code>plot-metadata.json</code> contains the serialized information about the plot.</li><li><code>series[Index].csv</code> contains the data of series [Index].</li></ul><br/><br/>The plot metadata JSON contains entries <code>title</code>, <code>export-width</code>,<code>export-height</code>, <code>background-color</code>, <code>grid-color</code>, <code>with-legend</code>, <code>title-font-size</code>, <code>legend-font-size</code>, <code>color-map</code>, and <code>plot-series</code>.<br/><code>plot-series</code> is mandatory and is a list of objects with each object having an object <code>metadata</code>, and a string element <code>file-name</code>. The file name must point at the corresponding <code>series[Index].csv</code> file of the series. Additional metadata in the root object and series metadata depend on the exact plot type.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/plot-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>plot-xy-line</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/plot-data.schema.json">https://jipipe.org/schemas/datatypes/plot-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Standard plots</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# XY scatter plot

Plot that displays the Y values against the X values.

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Plot</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li><span>2D Image (Color)</span></li>
<li><span>2D image</span></li>
<li><span>2D image (16 bit)</span></li>
<li><span>2D image (8 bit)</span></li>
<li><span>2D image (HSB)</span></li>
<li><span>2D image (LAB)</span></li>
<li><span>2D image (RGB)</span></li>
<li><span>2D image (float)</span></li>
<li><span>2D image (greyscale)</span></li>
<li><span>2D image (mask)</span></li>
<li><span>3D Image (Color)</span></li>
<li><span>3D image</span></li>
<li><span>3D image (16 bit)</span></li>
<li><span>3D image (8 bit)</span></li>
<li><span>3D image (HSB)</span></li>
<li><span>3D image (LAB)</span></li>
<li><span>3D image (RGB)</span></li>
<li><span>3D image (float)</span></li>
<li><span>3D image (greyscale)</span></li>
<li><span>3D image (mask)</span></li>
<li><span>4D Image (Color)</span></li>
<li><span>4D image</span></li>
<li><span>4D image (16 bit)</span></li>
<li><span>4D image (8 bit)</span></li>
<li><span>4D image (HSB)</span></li>
<li><span>4D image (LAB)</span></li>
<li><span>4D image (RGB)</span></li>
<li><span>4D image (float)</span></li>
<li><span>4D image (greyscale)</span></li>
<li><span>4D image (mask)</span></li>
<li><span>5D Image (Color)</span></li>
<li><span>5D image</span></li>
<li><span>5D image (16 bit)</span></li>
<li><span>5D image (8 bit)</span></li>
<li><span>5D image (HSB)</span></li>
<li><span>5D image (LAB)</span></li>
<li><span>5D image (RGB)</span></li>
<li><span>5D image (float)</span></li>
<li><span>5D image (greyscale)</span></li>
<li><span>5D image (mask)</span></li>
<li><span>Annotation table</span></li>
<li><span>GPU image</span></li>
<li><span>Image</span></li>
<li><span>Image (16 bit)</span></li>
<li><span>Image (8 bit)</span></li>
<li><span>Image (Color)</span></li>
<li><span>Image (HSB)</span></li>
<li><span>Image (LAB)</span></li>
<li><span>Image (RGB)</span></li>
<li><span>Image (float)</span></li>
<li><span>Image (greyscale)</span></li>
<li><span>Image (mask)</span></li>
<li><span>Json</span></li>
<li><span>LUT</span></li>
<li><span>OME Image</span></li>
<li><span>ROI list</span></li>
<li><span>Results table</span></li>
<li><span>String</span></li>
<li><span>XML</span></li>
</ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

The folder contains following files:<br/><ul><li><code>plot-metadata.json</code> contains the serialized information about the plot.</li><li><code>series[Index].csv</code> contains the data of series [Index].</li></ul><br/><br/>The plot metadata JSON contains entries <code>title</code>, <code>export-width</code>,<code>export-height</code>, <code>background-color</code>, <code>grid-color</code>, <code>with-legend</code>, <code>title-font-size</code>, <code>legend-font-size</code>, <code>color-map</code>, and <code>plot-series</code>.<br/><code>plot-series</code> is mandatory and is a list of objects with each object having an object <code>metadata</code>, and a string element <code>file-name</code>. The file name must point at the corresponding <code>series[Index].csv</code> file of the series. Additional metadata in the root object and series metadata depend on the exact plot type.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/plot-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>plot-xy-scatter</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/plot-data.schema.json">https://jipipe.org/schemas/datatypes/plot-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Standard plots</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr></table>

# Zero table column

A table column that generates zeros for each row.

## Trivial conversions

A trivial conversion involves no potentially expensive conversion operation. The data will directly match to input slots of the converted type. The edge has a dark-gray color.

This type can be trivially converted into following types:

<ul><li><span>Data</span></li>
<li><span>Table column</span></li>
</ul>

This type can be trivially converted from following types:

<ul><li>None</li></ul>

## Non-trivial conversions

A non-trivial conversion is defined by the developer and might involve some more complex conversion operations. They are indicated as blue edge.

This type can be also converted into following types:

<ul><li>None</li></ul>

This type can be also converted from following types:

<ul><li><span>Data</span></li>
</ul>

## Data storage

Following information was provided about the standardized storage of this data type:

This is a structural data type. The storage folder is empty.

Please visit following link for a JSON schema that describes the data storage: https://jipipe.org/schemas/datatypes/jipipe-empty-data.schema.json

## Developer information

<table><tr><td><strong>Data type ID</strong></td><td>table-column-zero</td></tr><tr><td><strong>Storage schema URL</strong></td><td><a href="https://jipipe.org/schemas/datatypes/jipipe-empty-data.schema.json">https://jipipe.org/schemas/datatypes/jipipe-empty-data.schema.json</a></td></tr><tr><td><strong>Plugin name</strong></td><td>Standard table operations</td></tr><tr><td><strong>Plugin author</strong></td><td>Zoltán Cseresnyés*</td></tr><tr><td><strong>Plugin author</strong></td><td>Ruman Gerst*</td></tr><tr><td><strong>Plugin author</strong></td><td>Marc Thilo Figge#</td></tr><tr><td><strong>Plugin website</strong></td><td><a href="https://www.jipipe.org/">https://www.jipipe.org/</a></td></tr><tr><td><strong>Plugin citation</strong></td><td></td></tr><tr><td><strong>Plugin license</strong></td><td>BSD 2-Clause</td></tr><tr><td><strong>Additional citation</strong></td><td>Rueden, C. T.; Schindelin, J. &amp; Hiner, M. C. et al. (2017), &quot;ImageJ2: ImageJ for the next generation of scientific image data&quot;, BMC Bioinformatics 18:529</td></tr><tr><td><strong>Additional citation</strong></td><td>Schneider, C. A.; Rasband, W. S. &amp; Eliceiri, K. W. (2012), &quot;NIH Image to ImageJ: 25 years of image analysis&quot;, Nature methods 9(7): 671-675</td></tr></table>

