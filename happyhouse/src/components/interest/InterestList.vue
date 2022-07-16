<template>
  <b-container class="bv-example-row mt-3">
    <b-row class="mb-1">
      <b-col class="">
        <h2>관심 지역 목록</h2>
      </b-col>
    </b-row>
    <b-row>
      <b-col v-if="interestInfo.length">
        <b-table-simple hover responsive>
          <tbody>
            <!-- 하위 component인 ListRow에 데이터 전달(props) -->
            <interest-list-item
              v-for="(interest, index) in interestInfo"
              :key="index"
              :interest="interest"
            />
          </tbody>
        </b-table-simple>
      </b-col>
      <!-- <b-col v-else class="text-center">도서 목록이 없습니다.</b-col> -->
    </b-row>
  </b-container>
</template>

<script>
import { mapState, mapActions } from "vuex";
// import { listInterest } from "@/api/interest.js";
import InterestListItem from "@/components/interest/item/InterestListItem";

const memberStore = "memberStore";
const interestStore = "interestStore";

export default {
  name: "InterestList",
  components: {
    InterestListItem,
  },
  data() {
    return {};
  },
  computed: {
    ...mapState(memberStore, ["userInfo"]),
    ...mapState(interestStore, ["interestInfo"]),

    sampleList: function () {
      return this.$store.getters["interestStore/sampleList"];
    },
  },
  watch: {
    sampleList() {
      this.setInterestList(this.userInfo.userid);
    },
  },
  created() {
    this.setInterestList(this.userInfo.userid);
  },
  methods: {
    ...mapActions(interestStore, ["setInterestList"]),
  },
};
</script>

<style scope>
.tdClass {
  width: 50px;
  text-align: center;
}
.tdSubject {
  width: 300px;
  text-align: left;
}
</style>
