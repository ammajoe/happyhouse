<template>
  <b-container v-if="house" class="bv-example-row">
    <b-list-group>
      <b-list-group-item>아파트 이름 : {{ house.aptName }}</b-list-group-item>
      <b-list-group-item>일련번호 : {{ house.aptCode }}</b-list-group-item>
      <b-list-group-item>법정동 : {{ house.dongName }}</b-list-group-item>
      <b-list-group-item
        >거래금액 : {{ house.recentPrice | price }}원</b-list-group-item
      >
    </b-list-group>
  </b-container>
</template>

<script>
import { mapState } from "vuex";

const houseStore = "houseStore";

export default {
  name: "HouseDetail",
  computed: {
    ...mapState(houseStore, ["house"]),
    // house() {
    //   return this.$store.state.house;
    // },
  },
  filters: {
    price(value) {
      if (!value) return value;
      return value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    },
  },
};
</script>

<style></style>
