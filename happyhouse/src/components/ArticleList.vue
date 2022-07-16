<template>
  <b-card class="overflow-auto">
    <p style="font-weight: bold"><b-icon icon="newspaper" /> 주요 뉴스</p>
    <b-row>
      <b-col>
        <b-table-simple hover responsive>
          <tbody>
            <tr v-for="(article, index) in articles" :key="index">
              <td>
                <a
                  style="color: black"
                  target="_blank"
                  :href="article.articleUrl"
                >
                  {{ article.title }}</a
                >
              </td>
            </tr>
          </tbody>
        </b-table-simple>
      </b-col>
      <!-- <b-col v-else class="text-center">도서 목록이 없습니다.</b-col> -->
    </b-row>
  </b-card>
</template>

<script>
import { listArticle } from "@/api/interest";
// import { ArticleItem } from "@/components/ArticleItem.vue";
export default {
  name: "ArticleView",
  // components: { ArticleItem },
  data() {
    return {
      articles: [],
    };
  },
  created() {
    listArticle(
      (response) => {
        this.articles = response.data;
        console.log(response.data);
      },
      (error) => {
        console.log(error);
        // eslint-disable-next-line
      }
    );
  },
  methods: {
    goArticle(e) {
      console.log(e);
    },
  },
};
</script>

<style></style>
