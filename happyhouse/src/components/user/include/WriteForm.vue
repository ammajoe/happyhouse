<template>
  <b-row class="mb-1">
    <b-col cols="3"></b-col>
    <b-col cols="6" style="text-align: left" class="border rounded">
      <b-form @submit="onSubmit" @reset="onReset" class="id-form">
        <b-form-group
          id="userid-group"
          label="아이디 : "
          label-for="userid"
          v-if="this.type === 'register'"
        >
          <b-form-input
            id="userid"
            v-model="user.userid"
            type="text"
            required
            placeholder="사용할 아이디를 입력하세요."
          ></b-form-input>
        </b-form-group>
        <b-form-group
          id="userid-group"
          label="아이디 : "
          label-for="userid"
          v-else
        >
          <b-form-input
            id="userid"
            v-model="user.userid"
            type="text"
            readonly
            placeholder="사용할 아이디를 입력하세요."
          ></b-form-input>
        </b-form-group>

        <b-form-group
          id="userpwd-group"
          label="비밀번호:"
          label-for="pwd"
          v-if="this.type === 'register'"
        >
          <b-form-input
            id="pwd"
            v-model="user.userpwd"
            type="text"
            required
            placeholder="비밀번호를 입력하세요."
          ></b-form-input>
        </b-form-group>

        <b-form-group id="name-group" label="이름:" label-for="name">
          <b-form-input
            id="name"
            v-model="user.username"
            type="text"
            required
            placeholder="이름을를 입력하세요."
          ></b-form-input>
        </b-form-group>
        <b-form-group id="email-group" label="이메일:" label-for="email">
          <b-form-input
            id="email"
            v-model="user.email"
            type="text"
            required
            placeholder="이메일을 입력하세요."
          ></b-form-input>
        </b-form-group>

        <b-button
          type="submit"
          variant="primary"
          class="m-1"
          v-if="this.type === 'register'"
          >회원가입</b-button
        >
        <b-button type="submit" variant="primary" class="m-1" v-else
          >정보수정</b-button
        >
        <b-button
          type="reset"
          variant="outline-primary"
          class="m-1"
          v-if="this.type === 'register'"
          >초기화</b-button
        >
      </b-form>
    </b-col>
    <b-col cols="3"></b-col>
  </b-row>
</template>

<script>
import { register, modifyMemeber } from "@/api/member";
import { mapState, mapActions } from "vuex";

const memberStore = "memberStore";

export default {
  name: "WriteForm",
  data() {
    return {
      user: {
        userid: "",
        userpwd: "",
        username: "",
        email: "",
        joindate: "",
      },
    };
  },
  props: {
    type: { type: String },
  },
  computed: {
    ...mapState(memberStore, ["userInfo"]),
  },
  created() {
    // console.log(this.type);
    if (this.type === "modify") {
      // console.log(this.userInfo.userid);
      this.user.userid = this.userInfo.userid;
      this.user.userpwd = this.userInfo.userpwd;
      this.user.username = this.userInfo.username;
      this.user.email = this.userInfo.email;
      this.user.joindate = this.userInfo.joindate;
    }
  },
  methods: {
    ...mapActions(memberStore, ["getUserInfo"]),
    onSubmit(event) {
      event.preventDefault();
      console.log(this.type);
      this.type === "register" ? this.registMemeber() : this.modify();
    },
    onReset(event) {
      event.preventDefault();
      this.user.userid = "";
      this.user.userpwd = "";
      this.user.username = "";
      this.user.email = "";
    },
    registMemeber() {
      // console.log("register");
      register(
        {
          userid: this.user.userid,
          userpwd: this.user.userpwd,
          username: this.user.username,
          email: this.user.email,
        },
        ({ data }) => {
          let msg = "등록 처리시 문제가 발생했습니다.";
          if (data === "success") {
            msg = "등록이 완료되었습니다.";
          }
          alert(msg);
          this.moveList();
        },
        (error) => {
          console.log(error);
          // eslint-disable-next-line
        }
      );
    },
    modify() {
      // console.log("modi");
      modifyMemeber(
        {
          userid: this.user.userid,
          userpwd: this.user.userpwd,
          username: this.user.username,
          email: this.user.email,
        },
        ({ data }) => {
          let msg = "수정 시 문제가 발생했습니다.";
          if (data === "success") {
            msg = "수정이 완료되었습니다.";
          }
          alert(msg);
          // store의 userinfo 바꿔줘야 함.
          let token = sessionStorage.getItem("access-token");
          this.getUserInfo(token);

          this.$router.push({ name: "home" });
        },
        (error) => {
          console.log(error);
          // eslint-disable-next-line
        }
      );
    },
    moveList() {
      this.$router.push({ name: "signIn" });
    },
  },
};
</script>

<style>
.id-form {
  margin: 20px;
}
</style>
