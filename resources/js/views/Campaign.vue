<template>
  <div>
    <v-card v-if="campaign.id" class="py-5 mx-2">
       <v-img 
       :src="'/photos/campaign/'+campaign.image" 
       class="white--text"
       height="350px"
       
      >
        <v-card-title
          class="fill-height align-end"
          v-text="campaign.title"
        >
        </v-card-title>
      </v-img>

      <v-card-text>
        <v-simple-table dense>
          <tbody>
            <tr>
              <td><v-icon>mdi-home-city</v-icon> Alamat</td>
              <td>{{ campaign.address }}</td>
            </tr>
            <tr>
              <td><v-icon>mdi-hand-heart</v-icon>Terkumpul</td>
              <td class="blue-text">Rp {{ campaign.collected.toLocaleString('id-ID') }}</td>
            </tr>
            <tr>
              <td><v-icon>mdi-cash</v-icon>Dibutuhkan</td>
              <td class="orange--text ">Rp. {{ campaign.required.toLocaleString('id-ID') }}</td>
            </tr>
          </tbody>
        </v-simple-table>
        Description: <br>
        {{ campaign.description }}
      </v-card-text>
      
      <v-card-actions>
        <v-btn block color="indigo accent-2 white--text" @click="donate" :disable="campaign.collected >= campaign.required">
          <v-icon>mdi-money</v-icon> &nbsp;
          DONATE
        </v-btn>
        
      </v-card-actions>

    </v-card>
  </div>
</template>

<script>
import { mapActions, mapMutations } from 'vuex';
export default {
  data: () => ({
    campaign: {}, //bentuknya berupa objecj
  }),
  created(){
    this.go()
  },
  methods: {
    ...mapMutations({
      tambahTransaksi : 'transaction/insert'
    }),

    ...mapActions({
      setAlert : 'alert/set'
    }),
    
    donate() {
      this.tambahTransaksi()
      this.setAlert({
        status : true,
        color : 'success',
        text : 'Transaksi ditambahkan'
      })
    },
     go(){
      let { id } = this.$route.params
      let url = '/api/campaign/'+id
      axios.get(url)
        .then((response) => {
          let { data } = response.data
          console.log(data)
          this.campaign = data.campaign
          console.log("cek",this.campaign.image)
        })
        .catch((error) => {
          let { response } = error
          // console.log(response)
        })
    },
  },
  computed: {
    counter(){
      return this.$store.getters.getCounter
    }
  }
}
</script>