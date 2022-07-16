<template>
  <div class="footer-set">
    <div class="container_inner">
      <div class="row justify-content-center">
        <div class="col-md-8">
          <div class="row">
            <div class="col-sm-6 col-md mb-4 mb-md-0">
              <h3 class="text-type">Discover</h3>
              <ul class="list-unstyled nav-links">
                <li class="text-gap">
                  <a href="#" class="text-link">Website editors</a>
                </li>
                <li class="text-gap">
                  <a href="#" class="text-link">Online retail</a>
                </li>
                <li class="text-gap">
                  <a href="#" class="text-link">Get started</a>
                </li>
                <li class="text-gap">
                  <a href="#" class="text-link">Services</a>
                </li>
              </ul>
            </div>
            <div class="col-sm-6 col-md mb-4 mb-md-0">
              <h3 class="text-type">About</h3>
              <ul class="list-unstyled nav-links">
                <li class="text-gap">
                  <a href="#" class="text-link">Contact</a>
                </li>
                <li class="text-gap">
                  <a href="#" class="text-link">Services</a>
                </li>
                <li class="text-gap"><a href="#" class="text-link">Team</a></li>
              </ul>
            </div>
            <div class="col-sm-6 col-md mb-4 mb-md-0">
              <h3 class="text-type">Services</h3>
              <ul class="list-unstyled nav-links">
                <li class="text-gap">
                  <a href="#" class="text-link">Events</a>
                </li>
                <li class="text-gap"><a href="#" class="text-link">News</a></li>
                <li class="text-gap">
                  <a href="#" class="text-link">Awards</a>
                </li>
              </ul>
            </div>
            <div class="col-sm-6 col-md mb-4 mb-md-0">
              <h3 class="text-type">Buy</h3>
              <ul class="list-unstyled nav-links">
                <li class="text-gap">
                  <a href="#" class="text-link">Where to Buy</a>
                </li>
                <li class="text-gap">
                  <a href="#" class="text-link">Shop Online</a>
                </li>
              </ul>
            </div>
            <div class="col-sm-6 col-md mb-4 mb-md-0">
              <h3 class="text-type">Help</h3>
              <ul class="list-unstyled nav-links">
                <li class="text-gap"><a href="#" class="text-link">FAQ</a></li>
                <li class="text-gap">
                  <a href="#" class="text-link">Support</a>
                </li>
                <li class="text-gap">
                  <a href="#" class="text-link">Knowledge Base</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="row py-3">
        <div class="col-md-12 pb-3">
          <div class="border-top"></div>
        </div>
      </div>
      <div class="row align-items-center">
        <div class="col-md-4">
          <ul class="list-unstyled social mb-0 pb-0 nav-left">
            <li class="text-gap">
              <a href="#"><span class="icon-twitter"></span></a>
            </li>
            <li class="text-gap">
              <a href="#"><span class="icon-facebook"></span></a>
            </li>
          </ul>
        </div>
        <div class="col-md-4 text-right">
          <ul class="list-unstyled social app mb-0 pb-0 nav-right">
            <li class="text-gap">
              <p>
                <i class="material-icons">© copyright</i> SSAFY 광주 4반 김지호,
                한세환
              </p>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style>
.footer-set {
  z-index: 1;

  -webkit-text-size-adjust: 100%;
  -webkit-tap-highlight-color: transparent;

  --breakpoint-xs: 0;
  --breakpoint-sm: 576px;
  --breakpoint-md: 768px;
  --breakpoint-lg: 992px;
  --breakpoint-xl: 1200px;
  --font-family-sans-serif: -apple-system, BlinkMacSystemFont, "Segoe UI",
    Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif,
    "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
  --font-family-monospace: SFMono-Regular, Menlo, Monaco, Consolas,
    "Liberation Mono", "Courier New", monospace;
  font-size: 1rem;
  font-weight: 400;
  line-height: 1.5;
  color: #212529;
  text-align: left;
  box-sizing: border-box;
  display: block;
  padding: 7rem 0;
  font-family: "Poppins", sans-serif;
}
.container_inner {
  font-size: 1rem;
  font-weight: 400;
  line-height: 1.5;
  color: #212529;
  text-align: left;
  font-family: "Poppins", sans-serif;
  box-sizing: border-box;
  width: 100%;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
}
.text-gap {
  font-size: 1rem;
  font-weight: 400;
  line-height: 1.5;
  color: #212529;
  font-family: "Poppins", sans-serif;
  list-style: none;
  box-sizing: border-box;
  display: block;
  margin-bottom: 10px;
}
.text-type {
  color: #212529;
  text-align: left;
  box-sizing: border-box;
  margin-top: 0;
  line-height: 1.2;
  font-size: 20px;
  font-weight: bold;
  margin-bottom: 20px;
}
.text-link {
  font-weight: 400;
  line-height: 1.5;
  font-family: "Poppins", sans-serif;
  list-style: none;
  box-sizing: border-box;
  background-color: transparent;
  transition: 0.3s all ease;
  text-decoration: none !important;
  font-size: 18px;
  color: #777;
}
</style>
