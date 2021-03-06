<!DOCTYPE html>
<html>
<head>
<style type="text/css">
 
.text p {
  position: relative;
  top: 50%;
  	-webkit-transform: translateY(-50%);
  	-ms-transform: translateY(-50%);
  	transform: translateY(-50%);
}
 
.image img {
  position: relative;
  top: 50%;
  	-webkit-transform: translateY(-50%);
  	-ms-transform: translateY(-50%);
  	transform: translateY(-50%);
}

.block-of-text p {
  position: relative;
  top: 50%;
  	-webkit-transform: translateY(-50%);
  	-ms-transform: translateY(-50%);
  	transform: translateY(-50%);
}

@mixin vertical-align {
  position: relative;
  top: 50%;
  	-webkit-transform: translateY(-50%);
  	-ms-transform: translateY(-50%);
  	transform: translateY(-50%);
}

.mixin p {
  @include vertical-align;
}

 
/* ====================================
   Base styling, to make the demo more fancy
   ==================================== */


body {
  font-family: Helvetica Neue, Helvetica, sans-serif;
  background: #59488b;
  padding: 1em;
  -webkit-font-smoothing: antialiased;
}

h1, h2 {
  text-align: center;
  color: white;
  font-weight: 200;
  margin-top: 0;
}

h1 {
  margin-bottom: 0;
}

h2 {
  margin-bottom: 1em;
}

section {
  display: block;
  max-width: 500px;
  background: #433669;
  margin: 0 auto 1em;
  height: 140px;
  border-radius: .5em;
  color: white;
  img, p {
    padding: 1em;
  }
}
</style>
</head>
<body>

<h1>Vertical center with only 3 lines of code</h1>

<section class="text">
  <p>I'm vertically aligned! Hi ho Silver, away!</p>
</section>

<section class="image">
  <img src="http://placehold.it/70x70">
</section>

<section class="block-of-text">
  <p>
    I'm a block of text!
    Lorem ipsum dolor sit amet, consectetur adipisicing elit. At quia doloremque tempora placeat officia ex obcaecati tenetur deserunt repudiandae praesentium.</p>
</section>

<section class="mixin">
  <p>I'm being aligned with a mixin! At quia doloremque tempora placeat officia ex obcaecati tenetur deserunt repudiandae praesentium.</p>
</section>


</body>

</html>