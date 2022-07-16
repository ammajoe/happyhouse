<template>
  <b-container class="bv-example-row mt-3">
    <b-row>
      <b-col col>
        <b-alert variant="" show><h3>회원정보수정</h3></b-alert>
      </b-col>
    </b-row>
    <write-form type="modify" />
  </b-container>
</template>

<script>
import WriteForm from "@/components/user/include/WriteForm.vue";

export default {
  name: "MemberRegister",
  components: {
    WriteForm,
  },
};
</script>

<style></style>
