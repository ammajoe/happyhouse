<template>
  <b-container>
    <b-row>
      <b-carousel
        id="carousel-fade"
        style="text-shadow: 0px 0px 2px #000"
        fade
        indicators
        img-width="1024"
        img-height="480"
      >
        <b-carousel-slide
          caption="EZHOME"
          :img-src="require('@/assets/img1.jpg')"
        ></b-carousel-slide>
        <b-carousel-slide
          caption="Happy"
          :img-src="require('@/assets/img22.jpg')"
        ></b-carousel-slide>
        <b-carousel-slide
          caption="House"
          :img-src="require('@/assets/img44.jpg')"
        ></b-carousel-slide>
      </b-carousel>
    </b-row>
    <br />
    <br />
    <article-list />
  </b-container>
</template>

<script>
import ArticleList from "@/components/ArticleList.vue";

export default {
  components: { ArticleList },
  name: "HomeView",
};
</script>

<style scoped>
.news {
  margin-left: 10px;
}
</style>
