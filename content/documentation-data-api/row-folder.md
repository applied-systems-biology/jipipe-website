+++
title = "Row folder"
description = "Data storage of a JIPipe data type in the file system"
weight = 20
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

All data in a [data table](/documentation-data-api/data-table) are stored in numeric
folders called "row folders", each containing the data of one table row.

This data stores the **raw serialized format**, without metadata - metadata is located
in `data-table.json` of the data table.

The exact structure of a row folder depends on the data type and is documented in
`(?) > Data type compendium` within JIPipe. Here we will provide you a list of the most important
row folder structures supported by JIPipe.

Not all data types save data: For example structural data like "Zero table" column
contain all necessary info in their type. There are also data types that are not instantiatable
and therefore are never saved. Always refer to the `true-data-type` property that
you can find within the data table.

<table>
<tr>
  <td><b>Data type</b></td>
  <td><b>Data type ID(s)</b></td>
  <td><b>Row folder structure</b></td>
</tr>
<tr>
  <td>All ImageJ images (except FFT)</td>
  <td>
    <ul>
    <li>imagej-imgplus</li>
<li>imagej-imgplus-greyscale</li>
<li>imagej-imgplus-greyscale-8u</li>
<li>imagej-imgplus-greyscale-mask</li>
<li>imagej-imgplus-greyscale-16u</li>
<li>imagej-imgplus-greyscale-32fu</li>
<li>imagej-imgplus-color</li>
<li>imagej-imgplus-color-rgb</li>
<li>imagej-imgplus-color-hsb</li>
<li>imagej-imgplus-color-lab</li>
<li>imagej-imgplus-2d</li>
<li>imagej-imgplus-2d-greyscale</li>
<li>imagej-imgplus-2d-greyscale-8u</li>
<li>imagej-imgplus-2d-greyscale-mask</li>
<li>imagej-imgplus-2d-greyscale-16u</li>
<li>imagej-imgplus-2d-greyscale-32fu</li>
<li>imagej-imgplus-2d-color</li>
<li>imagej-imgplus-2d-color-rgb</li>
<li>imagej-imgplus-2d-color-hsb</li>
<li>imagej-imgplus-2d-color-lab</li>
<li>imagej-imgplus-3d</li>
<li>imagej-imgplus-3d-greyscale</li>
<li>imagej-imgplus-3d-greyscale-8u</li>
<li>imagej-imgplus-3d-greyscale-mask</li>
<li>imagej-imgplus-3d-greyscale-16u</li>
<li>imagej-imgplus-3d-greyscale-32fu</li>
<li>imagej-imgplus-3d-color</li>
<li>imagej-imgplus-3d-color-rgb</li>
<li>imagej-imgplus-3d-color-hsb</li>
<li>imagej-imgplus-3d-color-lab</li>
<li>imagej-imgplus-4d</li>
<li>imagej-imgplus-4d-greyscale</li>
<li>imagej-imgplus-4d-greyscale-8u</li>
<li>imagej-imgplus-4d-greyscale-mask</li>
<li>imagej-imgplus-4d-greyscale-16u</li>
<li>imagej-imgplus-4d-greyscale-32fu</li>
<li>imagej-imgplus-4d-color</li>
<li>imagej-imgplus-4d-color-rgb</li>
<li>imagej-imgplus-4d-color-hsb</li>
<li>imagej-imgplus-4d-color-lab</li>
<li>imagej-imgplus-5d</li>
<li>imagej-imgplus-5d-greyscale</li>
<li>imagej-imgplus-5d-greyscale-8u</li>
<li>imagej-imgplus-5d-greyscale-mask</li>
<li>imagej-imgplus-5d-greyscale-16u</li>
<li>imagej-imgplus-5d-greyscale-32fu</li>
<li>imagej-imgplus-5d-color</li>
<li>imagej-imgplus-5d-color-rgb</li>
<li>imagej-imgplus-5d-color-hsb</li>
<li>imagej-imgplus-5d-color-lab</li>
    </ul>
  </td>
  <td>Contains one image file with one of following extensions: *.tif, *.tiff, *.png, *.jpeg, *.jpeg, *.png. We recommend the usage of TIFF.</td>
</tr>
<tr>
  <td>ImageJ FFT images</td>
  <td>
    <ul>
      <li>imagej-imgplus-fft</li>
      <li>imagej-imgplus-fft-2d</li>
      <li>imagej-imgplus-fft-3d</li>
      <li>imagej-imgplus-fft-4d</li>
      <li>imagej-imgplus-fft-5d</li>
    </ul>
    Info: Dimensions greater than 2 are currently experimental due to limitations in ImageJ.
  </td>
  <td>
    Contains two image files: fht.ome.tif / fht.tif and power_spectrum.ome.tif / power_spectrum.tif, as well as a file fht_info.json. Either the OME TIFF or TIFF must be present. fht.ome.tif / fht.tif contains the FHT (float32). power_spectrum.ome.tif / power_spectrum.tif contains the power spectrum (float32). fht_info.json contains a JSON object that defines following properties: quadrant-swap-needed (boolean), original-width (integer), original-height (integer), original-bit-depth (integer; 8, 16, or 32 are valid values), power-spectrum-mean (double).
  </td>
</tr>
<tr>
  <td>OME Image</td>
  <td>imagej-ome</td>
  <td>Contains one or multiple files in *.tif or *.ome.tif format. If OME TIFF is used, multiple tiff files can be present (due to the ability of OME TIFF to link them together). Although, we do recommend having multiple files, as sometimes OME TIFF can store absolute paths. If only standard TIFF files are present, only one will be loaded.</td>
</tr>
<tr>
  <td>Tables and table columns</td>
  <td>
    <ul>
      <li>imagej-results-table</li>
      <li>annotation-table</li>
      <li>table-column-string</li>
      <li>table-column-numeric</li>
    </ul>
  </td>
  <td>Contains a single *.csv file that contains the table data.</td>
</tr>
<tr>
  <td>Plots</td>
  <td>
    <ul>
      <li>plot-pie-2d</li>
      <li>plot-pie-3d</li>
      <li>plot-category-bar</li>
      <li>plot-box-and-whisker</li>
      <li>plot-histogram</li>
      <li>plot-category-line</li>
      <li>plot-category-bar-stacked</li>
      <li>plot-category-statistical-bar</li>
      <li>plot-category-statistical-line</li>
      <li>plot-xy-line</li>
      <li>plot-xy-scatter</li>
    </ul>
  </td>
  <td>
    plot-metadata.json contains the serialized information about the plot. series[Index].csv contains the data of series [Index].<br/>
     The plot metadata JSON contains entries title, export-width,export-height, background-color, grid-color, with-legend, title-font-size, legend-font-size, color-map, and plot-series. plot-series is mandatory and is a list of objects with each object having an object metadata, and a string element file-name. The file name must point at the corresponding series[Index].csv file of the series. Additional metadata in the root object and series metadata depend on the exact plot type.
  </td>
</tr>
</table>
