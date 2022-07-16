import { listInterest, writeInterest, deleteInterest } from "@/api/interest";

const interestStore = {
  namespaced: true,
  state: {
    interestInfo: [],
    interest: {},
  },

  getters: {
    sampleList: (state) => state.interestInfo,
  },

  mutations: {
    SET_INTEREST_LIST: (state, interests) => {
      //   console.log(houses);
      state.interestInfo = interests;
    },
    DELETE_INTER(state, interest) {
      const index = state.interestInfo.indexOf(interest);
      console.log("data?" + interest);
      state.interestInfo.splice(index, 1);
    },
    CREATE_INTEREST(state, interest) {
      state.interestInfo.push(interest);
    },
    SET_INTEREST(state, interest) {
      state.interest = interest;
    },
  },

  actions: {
    setInterestList: ({ commit }, userid) => {
      listInterest(
        userid,
        ({ data }) => {
          // console.log(commit, response);
          commit("SET_INTEREST_LIST", data);
        },
        (error) => {
          console.log(error);
          // eslint-disable-next-line
        }
      );
    },
    deleteInter: ({ commit }, interest) => {
      deleteInterest(
        interest.interestno,
        ({ data }) => {
          // console.log(commit, response);
          console.log(data);
          commit("DELETE_INTER", interest);
        },
        (error) => {
          console.log(error);
          // eslint-disable-next-line
        }
      );
    },
    createInterest: ({ commit }, interest) => {
      writeInterest(
        interest,
        ({ data }) => {
          //   console.log(response.data.response.body.items.item);
          commit("CREATE_INTEREST", data);
        },
        (error) => {
          console.log(error);
          // eslint-disable-next-line
        }
      );
    },
    setInterest: ({ commit }, interest) => {
      commit("SET_INTEREST", interest);
    },
  },
};

export default interestStore;
