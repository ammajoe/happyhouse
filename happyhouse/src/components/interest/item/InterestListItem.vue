<template>
  <b-tr>
    <b-td @click="selectInterest">{{ interest.sidoName }}</b-td>
    <b-td @click="selectInterest">{{ interest.gugunName }}</b-td>
    <b-td @click="selectInterest">{{ interest.dongName }}</b-td>
    <b-button variant="outline-primary" @click="listDelete">삭제</b-button>
  </b-tr>
</template>

<script>
import { mapState, mapActions } from "vuex";
// import { deleteInterest } from "@/api/interest.js";
const memberStore = "memberStore";
const interestStore = "interestStore";
const houseStore = "houseStore";

export default {
  name: "InterestListItem",
  props: {
    interest: Object,
  },
  computed: {
    ...mapState(memberStore, ["userInfo"]),
  },
  methods: {
    ...mapActions(interestStore, ["deleteInter"]),
    ...mapActions(houseStore, ["getHouseList"]),

    listDelete() {
      let param = this.interest;
      this.deleteInter(param);
    },
    selectInterest() {
      // houses 새로 mutaion할거임..
      this.getHouseList(this.interest.dongCode);
      console.log(this.interest.dongCode);
    },
  },
};
</script>

<style></style>
