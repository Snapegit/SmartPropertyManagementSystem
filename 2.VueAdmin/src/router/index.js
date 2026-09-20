	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import fangwuxinxi from '@/views/fangwuxinxi/list'
	import news from '@/views/news/list'
	import yuangong from '@/views/yuangong/list'
	import cheweidingdan from '@/views/cheweidingdan/list'
	import cheweixinxi from '@/views/cheweixinxi/list'
	import zaixianbaoxiu from '@/views/zaixianbaoxiu/list'
	import yonghu from '@/views/yonghu/list'
	import messages from '@/views/messages/list'
	import storeup from '@/views/storeup/list'
	import config from '@/views/config/list'
	import zaixianjiaofei from '@/views/zaixianjiaofei/list'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/fangwuxinxi',
			name: '房屋信息',
			component: fangwuxinxi
		}
		,{
			path: '/news',
			name: '公告信息',
			component: news
		}
		,{
			path: '/yuangong',
			name: '员工',
			component: yuangong
		}
		,{
			path: '/cheweidingdan',
			name: '车位订单',
			component: cheweidingdan
		}
		,{
			path: '/cheweixinxi',
			name: '车位信息',
			component: cheweixinxi
		}
		,{
			path: '/zaixianbaoxiu',
			name: '在线报修',
			component: zaixianbaoxiu
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/messages',
			name: '在线投诉',
			component: messages
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/zaixianjiaofei',
			name: '在线缴费',
			component: zaixianjiaofei
		}
		]
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
