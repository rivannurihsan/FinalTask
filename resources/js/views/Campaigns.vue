<template>
  <div>
    <v-container class="mx-2 py-3" grid list-sm fluid>
      <v-subheader>
        <h1>All Campaigns</h1>
      </v-subheader>
      <v-layout wrap>
        <v-flex v-for="(campaign) in campaigns" :key="`campaign-`+campaign.id" xs6 class="py-3 px-2">
          <!-- <v-card :to="'/campaign/'+campaign.id">
            <v-img :src="campaign.image" class="black--text"></v-img>
              <v-card-title class="fill-height align-end" v-text="campaign.title"></v-card-title>
            </v-img>
          </v-card> -->
          <campaign-item :campaign="campaign" />
        </v-flex>
      </v-layout>

      <v-pagination
        class="py-5"
        v-model="page"
        @input="go"
        :length="lengthPage"
        :total-visible="6"
      >
      </v-pagination>
    </v-container>
  </div>
</template>

<script>
export default {
  data: () => ({
    campaigns: [],
    page: 0,
    lengthPage: 0
  }),
  components:{
    CampaignItem: () => import('../components/CampaignItem')
  },
  created(){
    this.go()
  },
  methods: {
    go(){
      let url = 'api/campaign?page='+this.page
      axios.get(url)
        .then((response) => {
          let { data } = response.data
          this.campaigns = data.campaigns.data
          this.page = data.campaigns.current_page
          this.lengthPage = data.campaigns.last_page
        })
        .catch((error) => {
          let { responses } = error
          console.log(responses)
        })
    }
  }
}
</script>