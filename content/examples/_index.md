+++
title = "Examples"
weight = 15
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

To get started, you can take a look at some example pipelines and other kind of examples:

<div class="examples-container">
  <div class="examples">
    <div>
      <img src="/img/examples/example-spores.png" />
      <div class="feature-description">
        <h2>Segmenting spores</h2>
        <span>This example applies auto-thresholding to segment spores from microscopy images.
        It makes use of the particle analyzer to extract ROI and measurements and shows how to create an area histogram plot.
        There are both offline and online versions available. The online version downloads all necessary images from GitHub on executing the pipeline.
        This example is based on one of the tutorials.</span>
      </div>
      <div class="downloads">
        <button class="btn btn-default btn-success" type="button" onclick="alert('Sorry, the download is not available, yet!')"> <i class="fa fa-download"></i> Download (Offline)</button>
        <button class="btn btn-default btn-success" type="button" onclick="alert('Sorry, the download is not available, yet!')"> <i class="fa fa-download"></i> Download (Online)</button>
        <a class="btn btn-default" href="/tutorials/analysis"> <i class="fa fa-graduation-cap"></i> Tutorial</a>
      </div>
    </div>
    <div>
      <img src="/img/examples/example-glomeruli.png" />
      <div class="feature-description">
        <h2>Segmenting glomeruli</h2>
        <span>This example applies auto-thresholding and morphological operations to segment glomeruli in 2D slices of whole murine kidney light sheet microscopy images. This algorithm is part
        of a 3D segmentation published by Klingberg et al. There are both offline and online versions available. The online version downloads all necessary images from GitHub on executing the pipeline.</span>
      </div>
      <div class="downloads">
        <button class="btn btn-default btn-success" type="button" onclick="alert('Sorry, the download is not available, yet!')"> <i class="fa fa-download"></i> Download (Offline)</button>
        <button class="btn btn-default btn-success" type="button" onclick="alert('Sorry, the download is not available, yet!')"> <i class="fa fa-download"></i> Download (Online)</button>
        <a class="btn btn-default" href="https://pubmed.ncbi.nlm.nih.gov/27487796/" target="_blank"> <i class="fa fa-paragraph"></i> Publication</a>
      </div>
    </div>
    <div>
      <img src="/img/examples/example-unknown.png" />
      <div class="feature-description">
        <h2>Segmenting worms</h2>
        <span>This example segments worms. This algorithm is part
        of a 3D segmentation published by Klingberg et al. There are both offline and online versions available. The online version downloads all necessary images from GitHub on executing the pipeline.</span>
      </div>
      <div class="downloads">
        <button class="btn btn-default btn-success" type="button" onclick="alert('Sorry, the download is not available, yet!')"> <i class="fa fa-download"></i> Download (Offline)</button>
        <button class="btn btn-default btn-success" type="button" onclick="alert('Sorry, the download is not available, yet!')"> <i class="fa fa-download"></i> Download (Online)</button>
        <a class="btn btn-default" href="https://pubmed.ncbi.nlm.nih.gov/27487796/" target="_blank"> <i class="fa fa-paragraph"></i> Publication</a>
      </div>
    </div>
    <div>
      <img src="/img/examples/example-unknown.png" />
      <div class="feature-description">
        <h2>Stack hypermontage</h2>
        <span>A useful node that creates a montage of each incoming image stack and creates a montage of the montages. It is very useful when trying out different parameters for 3D analyses.
        Just copy the node from this website and paste it into your JIPipe pipeline.</span>
      </div>
      <div class="downloads">
        <button class="btn btn-default btn-success" type="button" onclick="copyMontageExample()"> <i class="fa fa-copy"></i> Copy</button>
        <button class="btn btn-default" type="button" onclick="alert('Sorry, the download is not available, yet!')"> <i class="fa fa-download"></i> Download example pipeline</button>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
$(document).ready(function(){
  // Landing page slideshow
  $('.examples').slick({
    infinite: true,
    dots: true,
    slidesToShow: 3,
    slidesToScroll: 3,
    autoplay: true,
    autoplaySpeed: 10000,
    centerMode: true,
    centerPadding: '5rem',
    initialSlide: 1,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
    ]
  });
});

function copyTextToClipboard(text, onsuccess) {
  if (!navigator.clipboard) {
    fallbackCopyTextToClipboard(text);
    return;
  }
 navigator.permissions.query({name:'geolocation'}).then(function(result) {
    if (result.state == "granted" || result.state == "prompt") {
      navigator.clipboard.writeText(text).then(function() {
        alert(onsuccess);
      }, function(err) {
        console.error('Async: Could not copy text: ', err);
      });
    }
    else {
      alert("Unable to copy to clipboard! You might be using an older browser that does not support this.");
    }
  });
}

function copyMontageExample() {
  var url = window.location.origin + '/examples/example-montage.json';
  fetch(url)
  .then(function(response) {
    response.text().then(text => copyTextToClipboard(text, "Copied the node to clipboard! Paste it into an existing JIPipe project."));
  });
}
</script>
