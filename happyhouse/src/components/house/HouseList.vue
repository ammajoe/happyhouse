<template>
  <b-container v-if="houses && houses.length != 0" class="bv-example-row mt-3">
    <b-table
      id="my-table"
      hover
      :per-page="perPage"
      :current-page="currentPage"
      :items="houses"
      :fields="fields"
      @row-clicked="selectHouse"
    >
    </b-table>
    <b-pagination
      v-model="currentPage"
      :total-rows="houses.length"
      :per-page="perPage"
      aria-controls="my-table"
      align="center"
    ></b-pagination>
  </b-container>
  <b-container v-else class="bv-example-row mt-3">
    <b-row>
      <b-col><b-alert show>주택 목록이 없습니다.</b-alert></b-col>
    </b-row>
  </b-container>
</template>

<script>
// import HouseListItem from "@/components/house/HouseListItem.vue";
import { mapState, mapActions, mapMutations } from "vuex";

const houseStore = "houseStore";

export default {
  name: "HouseList",
  // components: {
  //   HouseListItem,
  //   // rows() {
  //   //   return this.houses.length;
  //   // },
  // },
  data() {
    return {
      perPage: 5,
      currentPage: 1,
      fields: [
        { key: "dongName", label: "동이름", tdClass: "tdClass" },
        { key: "aptName", label: "아파트이름", tdClass: "tdClass" },
      ],
    };
  },
  created() {
    this.CLEAR_HOUSES_LIST();
    this.CLEAR_HOUSE_LIST();
  },
  computed: {
    ...mapState(houseStore, ["houses"]),
    // houses() {
    //   return this.$store.state.houses;
    // },
  },
  methods: {
    ...mapActions(houseStore, ["detailHouse"]),
    ...mapMutations(houseStore, ["CLEAR_HOUSES_LIST", "CLEAR_HOUSE_LIST"]),

    selectHouse(e) {
      this.detailHouse(e);
    },
  },
};
</script>

<style></style>
