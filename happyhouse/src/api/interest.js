import { apiInstance } from "./index.js";

const api = apiInstance();

function listInterest(userid, success, fail) {
  api.get(`/interest/${userid}`).then(success).catch(fail);
}

function writeInterest(interest, success, fail) {
  api.post(`/interest`, JSON.stringify(interest)).then(success).catch(fail);
}

function deleteInterest(interestno, success, fail) {
  api.delete(`/interest/${interestno}`).then(success).catch(fail);
}

function listArticle(success, fail) {
  api.get(`/article`).then(success).catch(fail);
}

export { listInterest, writeInterest, deleteInterest, listArticle };
