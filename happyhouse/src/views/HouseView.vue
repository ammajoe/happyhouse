<template>
  <b-container class="bv-example-row mt-3 text-center">
    <h3><b-icon icon="house-fill"></b-icon> 아파트 매매 정보</h3>
    <b-row>
      <b-col>
        <house-search-bar></house-search-bar>
      </b-col>
    </b-row>
    <b-row>
      <b-col>
        <map-view></map-view>
      </b-col>
    </b-row>
    <b-row>
      <b-col cols="6" align="left">
        <house-list />
      </b-col>
      <b-col cols="6" class="detail">
        <house-detail />
      </b-col>
    </b-row>
  </b-container>
</template>
<script>
import HouseSearchBar from "@/components/house/HouseSearchBar.vue";
import HouseList from "@/components/house/HouseList.vue";
import HouseDetail from "@/components/house/HouseDetail.vue";
import MapView from "@/components/house/MapView.vue";

export default {
  name: "HouseView",
  components: {
    HouseSearchBar,
    HouseList,
    HouseDetail,
    MapView,
  },
};
</script>
<style scoped>
.underline-orange {
  display: inline-block;
  background: linear-gradient(
    180deg,
    rgba(255, 255, 255, 0) 70%,
    rgba(231, 149, 27, 0.3) 30%
  );
}
.detail {
  margin-top: 30px;
}
</style>
