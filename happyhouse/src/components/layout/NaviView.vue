<template>
  <div id="container">
    <b-navbar class="nav-logo" toggleable="lg" type="dark" variant="white">
      <b-navbar-brand href="#">
        <router-link to="/">
          <b-img
            :src="require('@/assets/EZhome_logo.png')"
            class="ssafy_logo"
            style="height: 70px"
        /></router-link>
      </b-navbar-brand>

      <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

      <b-collapse id="nav-collapse" is-nav>
        <b-navbar-nav>
          <b-nav-item href="/home"
            ><router-link
              style="color: black; font-size: 20px"
              :to="{ name: 'home' }"
              class="link"
              >홈</router-link
            ></b-nav-item
          >
          <b-nav-item href="#"
            ><router-link
              style="color: black; font-size: 20px"
              :to="{ name: 'board' }"
              class="link"
            >
              게시판</router-link
            ></b-nav-item
          >
          <b-nav-item href="#"
            ><router-link
              style="color: black; font-size: 20px"
              :to="{ name: 'house' }"
              class="link"
            >
              아파트정보</router-link
            ></b-nav-item
          >
          <b-nav-item href="#"
            ><router-link
              style="color: black; font-size: 20px"
              :to="{ name: 'interest' }"
              class="link"
            >
              관심목록</router-link
            ></b-nav-item
          >
        </b-navbar-nav>

        <!-- Right aligned nav items -->
        <b-navbar-nav class="nav-login ml-auto" v-if="userInfo">
          <b-nav-item class="align-self-center"
            >{{ userInfo.username }}({{ userInfo.userid }})님
            환영합니다.</b-nav-item
          >
          <b-nav-item class="align-self-center"
            ><router-link
              style="color: black"
              :to="{ name: 'mypage' }"
              class="link align-self-center"
              >내정보보기</router-link
            ></b-nav-item
          >
          <b-nav-item
            class="link align-self-center"
            @click.prevent="onClickLogout"
            >로그아웃</b-nav-item
          >
        </b-navbar-nav>
        <b-navbar-nav class="nav-login ml-auto" v-else>
          <b-nav-item-dropdown right>
            <template #button-content>
              <b-icon icon="people" font-scale="2"></b-icon>
            </template>
            <b-dropdown-item href="#"
              ><router-link
                style="color: black"
                :to="{ name: 'signUp' }"
                class="link"
                ><b-icon icon="person-circle"></b-icon> 회원가입</router-link
              ></b-dropdown-item
            >
            <b-dropdown-item href="#"
              ><router-link
                style="color: black"
                :to="{ name: 'signIn' }"
                class="link"
                ><b-icon icon="key"></b-icon> 로그인</router-link
              ></b-dropdown-item
            >
          </b-nav-item-dropdown>
        </b-navbar-nav>
      </b-collapse>
    </b-navbar>
  </div>
</template>

<script>
import { mapState, mapMutations } from "vuex";
// import ms from "@/store/modules/memberStore";

const memberStore = "memberStore";

export default {
  name: "NaviView",
  computed: {
    ...mapState(memberStore, ["isLogin", "userInfo"]),
  },
  methods: {
    ...mapMutations(memberStore, ["SET_IS_LOGIN", "SET_USER_INFO"]),
    onClickLogout() {
      // console.log("memberStore : ", ms);
      this.SET_IS_LOGIN(false);
      this.SET_USER_INFO(null);
      sessionStorage.removeItem("access-token");
      if (this.$route.path != "/") this.$router.push({ name: "home" });
    },
  },
};
</script>

<style>
.text {
  color: black;
  font-weight: 500;
}
.navbar-dark .navbar-nav .nav-link {
  color: rgb(0, 0, 0) !important;
  font-weight: 550;
}
.nav-logo {
  margin-left: 70px;
}
.nav-login {
  margin-right: 100px;
}
</style>
