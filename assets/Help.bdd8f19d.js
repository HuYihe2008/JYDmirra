import{l as f,ao as m,r as p,d as h,k as _,B as o,aj as v,c as k,ai as t,ah as g,D as i,F as x,a as j,ak as N}from"./vue.97086ee9.js";import{ar as B,at as y,as as D,av as R,az as b,aA as w}from"./index.ed06b40e.js";import{N as z}from"./Result.1f8145f3.js";import"./utils.cf162f7d.js";const V=f({setup(C){const{t:a}=B(),u=m(),l=y(),d=D(),r=p(""),s=h(()=>{const e=u.params.distro;if(e!=null)return l.state.docItems.find(n=>n.name==e)});return _(()=>{s.value&&w(s.value).then(e=>r.value=e,e=>d.error(e.message))}),(e,n)=>(o(),v(x,null,[k(t(R),{prefix:"bar"},{default:g(()=>{var c;return[j(N((((c=t(s))==null?void 0:c.name)||"")+" "+t(a)("header.doc")),1)]}),_:1}),t(s)?(o(),i(b,{key:0,content:r.value},null,8,["content"])):(o(),i(t(z),{key:1,size:"huge",status:"info",title:t(a)("help.title"),description:t(a)("help.description")},null,8,["title","description"]))],64))}});export{V as default};
