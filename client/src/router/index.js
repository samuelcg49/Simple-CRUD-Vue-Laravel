import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home";
import FormularioCarrera from "../views/FormularioCarrera";

Vue.use(VueRouter);

export const router = new VueRouter({
    base: "/",
    mode: "history",
    routes: [
        {
            path: "/home",
            name: "home",
            component: Home,
        },
        {
            path: "/",
            name: "home",
            component: Home,
        },
        {
            path: "/crear-carrera",
            name: "crearcarrera",
            component: FormularioCarrera,
        },
        {
            path: "/actualizar-carrera/",
            name: "updatecarrera",
            props: (route) => {
                return { ...route.params };
            },
            component: FormularioCarrera,
        },
    ],
});
