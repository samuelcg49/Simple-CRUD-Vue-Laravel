import Vue from 'vue'
import App from './App.vue'
import { router } from './router/index'
import { library } from '@fortawesome/fontawesome-svg-core'
/* import { faTrashAlt} from '@fortawesome/free-solid-svg-icons' */ //Hace referencia al icono, en este caso la papelera.
import { fas } from '@fortawesome/free-solid-svg-icons' // Importa todos los iconos sólidos.
/* import { far } from '@fortawesome/free-regular-svg-icons'
   import { fab } from '@fortawesome/free-brands-svg-icons' -> Este ya está instalado
   import { fal } from '@fortawesome/free-light-svg-icons' 
   import { fad } from '@fortawesome/free-duotone-svg-icons'
   */
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

/* library.add(faTrashAlt)  *///Añade la papelera.
library.add(fas)  //Añade todos los iconos sólidos.

Vue.component('font-awesome-icon', FontAwesomeIcon)

Vue.config.productionTip = false

new Vue({
  router,
  render: h => h(App),
}).$mount('#app')
