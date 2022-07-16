<template>
  <b-container class="bv-example-row mt-3 text-center">
    <h3><b-icon icon="house-fill"></b-icon> 관심지역 페이지</h3>
    <b-row>
      <b-col>
        <interest-search-bar></interest-search-bar>
      </b-col>
    </b-row>
    <b-row>
      <b-col cols="4" align="left">
        <interest-list />
      </b-col>
      <b-col cols="8">
        <map-view></map-view>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
import InterestSearchBar from "@/components/interest/InterestSearchBar.vue";
import InterestList from "@/components/interest/InterestList.vue";
import MapView from "@/components/interest/MapViewCopy.vue";

export default {
  name: "InterestView",
  components: {
    InterestSearchBar,
    InterestList,
    MapView,
  },
};
</script>

<style scoped>
.underline-green {
  display: inline-block;
  background: linear-gradient(
    180deg,
    rgba(255, 255, 255, 0) 70%,
    rgba(56, 233, 40, 0.3) 30%
  );
}
</style>
