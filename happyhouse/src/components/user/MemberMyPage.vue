<template>
  <b-container class="mt-4" v-if="userInfo">
    <b-row>
      <b-col>
        <b-alert variant="" show><h3>마이페이지</h3></b-alert>
      </b-col>
    </b-row>
    <b-row>
      <b-col cols="4">
        <b-img
          img
          :src="require(`@/assets/userimg2.png`)"
          style="height: 250px"
          alt="Image 1"
        ></b-img>
      </b-col>
      <b-col cols="7">
        <template #header>My Page</template>
        <template #lead> 내 정보 확인페이지입니다. </template>
        <hr class="my-4" />
        <b-container class="mt-4">
          <b-row>
            <b-col cols="2"></b-col>
            <b-col cols="2" align-self="end">아이디</b-col
            ><b-col cols="4" align-self="start">{{ userInfo.userid }}</b-col>
            <b-col cols="2"></b-col>
          </b-row>
          <b-row>
            <b-col cols="2"></b-col>
            <b-col cols="2" align-self="end">이름</b-col
            ><b-col cols="4" align-self="start">{{ userInfo.username }}</b-col>
            <b-col cols="2"></b-col>
          </b-row>
          <b-row>
            <b-col cols="2"></b-col>
            <b-col cols="2" align-self="end">이메일</b-col
            ><b-col cols="4" align-self="start">{{ userInfo.email }}</b-col>
            <b-col cols="2"></b-col>
          </b-row>
          <b-row>
            <b-col cols="2"></b-col>
            <b-col cols="2" align-self="end">가입일</b-col
            ><b-col cols="4" align-self="start">{{ userInfo.joindate }}</b-col>
            <b-col cols="2"></b-col>
          </b-row>
        </b-container>
        <hr class="my-4" />

        <b-button variant="primary" @click="moveModify" class="mr-1"
          >정보수정</b-button
        >
        <b-button variant="danger" @click="deleteMem">회원탈퇴</b-button>
      </b-col>

      <b-col></b-col>
      <br />
      <br />
    </b-row>
  </b-container>
</template>

<script>
import { mapState, mapMutations } from "vuex";
import { deleteMember } from "@/api/member";

const memberStore = "memberStore";

export default {
  name: "MemberMyPage",
  components: {},
  computed: {
    ...mapState(memberStore, ["userInfo"]),
  },
  methods: {
    moveModify() {
      this.$router.push({ name: "modify" });
    },
    deleteMem() {
      if (confirm("정말로 탈퇴?")) {
        deleteMember(this.userInfo.userid, () => {
          this.onClickLogout();
        });
      }
    },
    ...mapMutations(memberStore, ["SET_IS_LOGIN", "SET_USER_INFO"]),
    onClickLogout() {
      // console.log("memberStore : ", ms);
      this.SET_IS_LOGIN(false);
      this.SET_USER_INFO(null);
      sessionStorage.removeItem("access-token");
      this.$router.push({ name: "home" });
    },
  },
};
</script>

<style>
.mypage {
  margin: 40px;
}
</style>
