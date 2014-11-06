﻿(function(g,f,b,e,c,d,q){/*! Jssor */
$Jssor$=g.$Jssor$=g.$Jssor$||{};new(function(){});var m=function(){var b=this,a={};b.$On=b.addEventListener=function(b,c){if(typeof c!="function")return;if(!a[b])a[b]=[];a[b].push(c)};b.$Off=b.removeEventListener=function(e,d){var b=a[e];if(typeof d!="function")return;else if(!b)return;for(var c=0;c<b.length;c++)if(d==b[c]){b.splice(c,1);return}};b.c=function(e){var c=a[e],d=[];if(!c)return;for(var b=1;b<arguments.length;b++)d.push(arguments[b]);for(var b=0;b<c.length;b++)try{c[b].apply(g,d)}catch(f){}}},h;(function(){h=function(a,b){this.x=typeof a=="number"?a:0;this.y=typeof b=="number"?b:0};})();var l=g.$JssorEasing$={$EaseLinear:function(a){return a},$EaseGoBack:function(a){return 1-b.abs(2-1)},$EaseSwing:function(a){return-b.cos(a*b.PI)/2+.5},$EaseInQuad:function(a){return a*a},$EaseOutQuad:function(a){return-a*(a-2)},$EaseInOutQuad:function(a){return(a*=2)<1?1/2*a*a:-1/2*(--a*(a-2)-1)},$EaseInCubic:function(a){return a*a*a},$EaseOutCubic:function(a){return(a-=1)*a*a+1},$EaseInOutCubic:function(a){return(a*=2)<1?1/2*a*a*a:1/2*((a-=2)*a*a+2)},$EaseInQuart:function(a){return a*a*a*a},$EaseOutQuart:function(a){return-((a-=1)*a*a*a-1)},$EaseInOutQuart:function(a){return(a*=2)<1?1/2*a*a*a*a:-1/2*((a-=2)*a*a*a-2)},$EaseInQuint:function(a){return a*a*a*a*a},$EaseOutQuint:function(a){return(a-=1)*a*a*a*a+1},$EaseInOutQuint:function(a){return(a*=2)<1?1/2*a*a*a*a*a:1/2*((a-=2)*a*a*a*a+2)},$EaseInSine:function(a){return 1-b.cos(a*b.PI/2)},$EaseOutSine:function(a){return b.sin(a*b.PI/2)},$EaseInOutSine:function(a){return-1/2*(b.cos(b.PI*a)-1)},$EaseInExpo:function(a){return a==0?0:b.pow(2,10*(a-1))},$EaseOutExpo:function(a){return a==1?1:-b.pow(2,-10*a)+1},$EaseInOutExpo:function(a){return a==0||a==1?a:(a*=2)<1?1/2*b.pow(2,10*(a-1)):1/2*(-b.pow(2,-10*--a)+2)},$EaseInCirc:function(a){return-(b.sqrt(1-a*a)-1)},$EaseOutCirc:function(a){return b.sqrt(1-(a-=1)*a)},$EaseInOutCirc:function(a){return(a*=2)<1?-1/2*(b.sqrt(1-a*a)-1):1/2*(b.sqrt(1-(a-=2)*a)+1)},$EaseInElastic:function(a){if(!a||a==1)return a;var c=.3,d=.075;return-(b.pow(2,10*(a-=1))*b.sin((a-d)*2*b.PI/c))},$EaseOutElastic:function(a){if(!a||a==1)return a;var c=.3,d=.075;return b.pow(2,-10*a)*b.sin((a-d)*2*b.PI/c)+1},$EaseInOutElastic:function(a){if(!a||a==1)return a;var c=.45,d=.1125;return(a*=2)<1?-.5*b.pow(2,10*(a-=1))*b.sin((a-d)*2*b.PI/c):b.pow(2,-10*(a-=1))*b.sin((a-d)*2*b.PI/c)*.5+1},$EaseInBack:function(a){var b=1.70158;return a*a*((b+1)*a-b)},$EaseOutBack:function(a){var b=1.70158;return(a-=1)*a*((b+1)*a+b)+1},$EaseInOutBack:function(a){var b=1.70158;return(a*=2)<1?1/2*a*a*(((b*=1.525)+1)*a-b):1/2*((a-=2)*a*(((b*=1.525)+1)*a+b)+2)},$EaseInBounce:function(a){return 1-l.$EaseOutBounce(1-a)},$EaseOutBounce:function(a){return a<1/2.75?7.5625*a*a:a<2/2.75?7.5625*(a-=1.5/2.75)*a+.75:a<2.5/2.75?7.5625*(a-=2.25/2.75)*a+.9375:7.5625*(a-=2.625/2.75)*a+.984375},$EaseInOutBounce:function(a){return a<1/2?l.$EaseInBounce(a*2)*.5:l.$EaseOutBounce(a*2-1)*.5+.5},$EaseInWave:function(a){return 1-b.cos(a*b.PI*2)},$EaseOutWave:function(a){return b.sin(a*b.PI*2)},$EaseOutJump:function(a){return 1-((a*=2)<1?(a=1-a)*a*a:(a-=1)*a*a)},$EaseInJump:function(a){return(a*=2)<1?a*a*a:(a=2-a)*a*a}},r={Sd:37,td:39},n={ud:0,xd:1,wd:2,Xd:3,se:4,re:5},z=1,v=2,w=4,y=5,j,a=new function(){var i=this,m=n.ud,j=0,s=0,B=0,fb=navigator.appName,k=navigator.userAgent;function F(){if(!m)if(fb=="Microsoft Internet Explorer"&&!!g.attachEvent&&!!g.ActiveXObject){var d=k.indexOf("MSIE");m=n.xd;s=parseFloat(k.substring(d+5,k.indexOf(";",d)));/*@cc_on@*/j=f.documentMode||s}else if(fb=="Netscape"&&!!g.addEventListener){var c=k.indexOf("Firefox"),a=k.indexOf("Safari"),h=k.indexOf("Chrome"),b=k.indexOf("AppleWebKit");if(c>=0){m=n.wd;j=parseFloat(k.substring(c+8))}else if(a>=0){var i=k.substring(0,a).lastIndexOf("/");m=h>=0?n.se:n.Xd;j=parseFloat(k.substring(i+1,a))}if(b>=0)B=parseFloat(k.substring(b+12))}else{var e=/(opera)(?:.*version|)[ \/]([\w.]+)/i.exec(k);if(e){m=n.re;j=parseFloat(e[2])}}}function r(){F();return m==z}function I(){return r()&&(j<6||f.compatMode=="BackCompat")}function Z(){F();return m==v}function lb(){F();return m==w}function nb(){F();return m==y}function A(){return r()&&j<9}var D;function t(a){if(!D){p(["transform","WebkitTransform","msTransform","MozTransform","OTransform"],function(b){if(!i.Ub(a.style[b])){D=b;return c}});D=D||"transform"}return D}function db(a){return Object.prototype.toString.call(a)}var L;function p(a,c){if(db(a)=="[object Array]"){for(var b=0;b<a.length;b++)if(c(a[b],b,a))break}else for(var d in a)if(c(a[d],d,a))break}function ob(){if(!L){L={};p(["Boolean","Number","String","Function","Array","Date","RegExp","Object"],function(a){L["[object "+a+"]"]=a.toLowerCase()})}return L}function C(a){return a==e?String(a):ob()[db(a)]||"object"}function eb(b,a){setTimeout(b,a||0)}function K(b,d,c){var a=!b||b=="inherit"?"":b;p(d,function(c){var b=c.exec(a);if(b){var d=a.substr(0,b.index),e=a.substr(b.lastIndex+1,a.length-(b.lastIndex+1));a=d+e}});a=c+(a.indexOf(" ")!=0?" ":"")+a;return a}function ab(b,a){if(j<9)b.style.filter=a}i.yb=r;i.Tb=lb;i.gc=nb;i.Bb=A;i.U=function(){return j};i.jc=function(){return B};i.$Delay=eb;i.C=function(a){if(i.Yd(a))a=f.getElementById(a);return a};i.qb=function(a){return a?a:g.event};i.bc=function(a){a=i.qb(a);var b=new h;if(a.type=="DOMMouseScroll"&&Z()&&j<3){b.x=a.screenX;b.y=a.screenY}else if(typeof a.pageX=="number"){b.x=a.pageX;b.y=a.pageY}else if(typeof a.clientX=="number"){b.x=a.clientX+f.body.scrollLeft+f.documentElement.scrollLeft;b.y=a.clientY+f.body.scrollTop+f.documentElement.scrollTop}return b};function G(c,d,a){if(a!=q)c.style[d]=a;else{var b=c.currentStyle||c.style;a=b[d];if(a==""&&g.getComputedStyle){b=c.ownerDocument.defaultView.getComputedStyle(c,e);b&&(a=b.getPropertyValue(d)||b[d])}return a}}function Q(b,c,a,d){if(a!=q){d&&(a+="px");G(b,c,a)}else return parseFloat(G(b,c))}function l(d,a){var b=a&2,c=a?Q:G;return function(e,a){return c(e,d,a,b)}}function kb(b){if(r()&&s<9){var a=/opacity=([^)]*)/.exec(b.style.filter||"");return a?parseFloat(a[1])/100:1}else return parseFloat(b.style.opacity||"1")}function mb(c,a,f){if(r()&&s<9){var h=c.style.filter||"",i=new RegExp(/[\s]*alpha\([^\)]*\)/g),e=b.round(100*a),d="";if(e<100||f)d="alpha(opacity="+e+") ";var g=K(h,[i],d);ab(c,g)}else c.style.opacity=a==1?"":b.round(a*100)/100}i.je=function(b,c){var a=t(b);if(a)b.style[a+"Origin"]=c};i.ge=function(a,c){if(r()&&s<9||s<10&&I())a.style.zoom=c==1?"":c;else{var b=t(a);if(b){var f="scale("+c+")",e=a.style[b],g=new RegExp(/[\s]*scale\(.*?\)/g),d=K(e,[g],f);a.style[b]=d}}};i.he=function(a){if(!a.style[t(a)]||a.style[t(a)]=="none")a.style[t(a)]="perspective(2000px)"};i.e=function(a,c,d,b){a=i.C(a);if(a.addEventListener){c=="mousewheel"&&a.addEventListener("DOMMouseScroll",d,b);a.addEventListener(c,d,b)}else if(a.attachEvent){a.attachEvent("on"+c,d);b&&a.setCapture&&a.setCapture()}};i.Qc=function(a,c,d,b){a=i.C(a);if(a.removeEventListener){c=="mousewheel"&&a.removeEventListener("DOMMouseScroll",d,b);a.removeEventListener(c,d,b)}else if(a.detachEvent){a.detachEvent("on"+c,d);b&&a.releaseCapture&&a.releaseCapture()}};i.Oc=function(b,a){i.e(A()?f:g,"mouseup",b,a)};i.N=function(a){a=i.qb(a);a.preventDefault&&a.preventDefault();a.cancel=c;a.returnValue=d};i.p=function(e,d){for(var b=[],a=2;a<arguments.length;a++)b.push(arguments[a]);var c=function(){for(var c=b.concat([]),a=0;a<arguments.length;a++)c.push(arguments[a]);return d.apply(e,c)};return c};i.dd=function(a,c){var b=f.createTextNode(c);i.ac(a);a.appendChild(b)};i.ac=function(a){a.innerHTML=""};i.fb=function(c){for(var b=[],a=c.firstChild;a;a=a.nextSibling)a.nodeType==1&&b.push(a);return b};function R(a,c,b,f){if(!b)b="u";for(a=a?a.firstChild:e;a;a=a.nextSibling)if(a.nodeType==1){if(i.K(a,b)==c)return a;if(f){var d=R(a,c,b,f);if(d)return d}}}i.n=R;function W(a,c,d){for(a=a?a.firstChild:e;a;a=a.nextSibling)if(a.nodeType==1){if(a.tagName==c)return a;if(d){var b=W(a,c,d);if(b)return b}}}i.Zc=W;i.ad=function(b,a){return b.getElementsByTagName(a)};i.l=function(c){for(var b=1;b<arguments.length;b++){var a=arguments[b];if(a)for(var d in a)c[d]=a[d]}return c};i.Ub=function(a){return C(a)=="undefined"};i.Wc=function(a){return C(a)=="function"};i.Yd=function(a){return C(a)=="string"};i.Xc=function(a){return!isNaN(parseFloat(a))&&isFinite(a)};i.h=p;i.gb=function(a){return i.Xb("DIV",a)};i.Uc=function(a){return i.Xb("SPAN",a)};i.Xb=function(b,a){a=a||f;return a.createElement(b)};i.M=function(){};i.sb=function(a,b){return a.getAttribute(b)};i.K=function(a,b){return i.sb(a,b)||i.sb(a,"data-"+b)};i.Kc=function(b,c,a){b.setAttribute(c,a)};i.Sb=function(a){return a.className};i.Dc=function(b,a){b.className=a||""};i.V=function(a){return a.parentNode};i.w=function(a){i.A(a,"none")};i.o=function(a,b){i.A(a,b==d?"none":"")};i.ob=function(b,a){b.removeAttribute(a)};i.cd=function(){return r()&&j<10};i.bd=function(d,c){if(c)d.style.clip="rect("+b.round(c.$Top)+"px "+b.round(c.$Right)+"px "+b.round(c.$Bottom)+"px "+b.round(c.$Left)+"px)";else{var g=d.style.cssText,f=[new RegExp(/[\s]*clip: rect\(.*?\)[;]?/i),new RegExp(/[\s]*cliptop: .*?[;]?/i),new RegExp(/[\s]*clipright: .*?[;]?/i),new RegExp(/[\s]*clipbottom: .*?[;]?/i),new RegExp(/[\s]*clipleft: .*?[;]?/i)],e=K(g,f,"");a.ub(d,e)}};i.v=function(){return+new Date};i.s=function(b,a){b.appendChild(a)};i.cb=function(c,b,a){c.insertBefore(b,a)};i.X=function(b,a){b.removeChild(a)};i.Yc=function(b,a){p(a,function(a){i.X(b,a)})};i.Vc=function(a){i.Yc(a,i.fb(a))};i.oc=function(b,a){var c=f.body;while(a&&b!=a&&c!=a)try{a=a.parentNode}catch(e){return d}return b==a};i.t=function(b,a){return b.cloneNode(a)};function N(b,a,c){a.onload=e;a.abort=e;b&&b(a,c)}i.O=function(d,b){if(i.gc()&&j<11.6||!d)N(b,e);else{var a=new Image;a.onload=i.p(e,N,b,a);a.onabort=i.p(e,N,b,a,c);a.src=d}};i.jd=function(e,b,f){var d=e.length+1;function c(a){d--;if(b&&a&&a.src==b.src)b=a;!d&&f&&f(b)}a.h(e,function(b){a.O(b.src,c)});c()};i.mc=function(d,k,j,i){if(i)d=a.t(d,c);for(var h=a.ad(d,k),f=h.length-1;f>-1;f--){var b=h[f],e=a.t(j,c);a.Dc(e,a.Sb(b));a.ub(e,b.style.cssText);var g=a.V(b);a.cb(g,e,b);a.X(g,b)}return d};var E;function qb(b){var g=this,h,e,j;function f(){var c=h;if(e)c+="dn";else if(j)c+="av";a.Dc(b,c)}function k(){E.push(g);e=c;f()}g.ed=function(){e=d;f()};g.zc=function(a){j=a;f()};b=i.C(b);if(!E){i.Oc(function(){var a=E;E=[];p(a,function(a){a.ed()})});E=[]}h=i.Sb(b);a.e(b,"mousedown",k)}i.eb=function(a){return new qb(a)};i.yc=G;i.R=l("overflow");i.ub=l("cssText");i.i=l("top",2);i.m=l("left",2);i.g=l("width",2);i.f=l("height",2);i.pe=l("marginLeft",2);i.ne=l("marginTop",2);i.r=l("position");i.A=l("display");i.x=l("zIndex",1);i.Eb=function(b,a,c){if(a!=q)mb(b,a,c);else return kb(b)};var P={$Opacity:i.Eb,$Top:i.i,$Left:i.m,Kb:i.g,Lb:i.f,Q:i.r,Qf:i.A,$ZIndex:i.x},u;function J(){if(!u)u=i.l({Rf:i.ne,Sf:i.pe,$Clip:i.bd},P);return u}i.Sc=J;i.E=function(c,b){var a=J();p(b,function(d,b){a[b]&&a[b](c,d)})};new(function(){})};j=function(n,m,g,O,z,x){n=n||0;var f=this,r,o,p,y,A=0,C,M,L,D,j=0,t=0,E,k=n,i,h,q,u=[],B;function I(b){i+=b;h+=b;k+=b;j+=b;t+=b;a.h(u,function(a){a,a.$Shift(b)})}function N(a,b){var c=a-i+n*b;I(c);return h}function w(w,G){var n=w;if(q&&(n>=h||n<=i))n=((n-i)%q+q)%q+i;if(!E||y||G||j!=n){var p=b.min(n,h);p=b.max(p,i);if(!E||y||G||p!=t){if(x){var d=x;if(z){var s=(p-k)/(m||1);if(g.Tc&&a.Tb()&&m)s=b.round(s*m/16)/m*16;if(g.$Reverse)s=1-s;d={};for(var o in x){var R=M[o]||1,J=L[o]||[0,1],l=(s-J[0])/J[1];l=b.min(b.max(l,0),1);l=l*R;var H=b.floor(l);if(l!=H)l-=H;var Q=C[o]||C.lb,I=Q(l),r,K=z[o],F=x[o];if(a.Xc(F))r=K+(F-K)*I;else{r=a.l({F:{}},z[o]);a.h(F.F,function(c,b){var a=c*I;r.F[b]=a;r[b]+=a})}d[o]=r}}if(z.$Zoom);if(x.$Clip&&g.$Move){var v=d.$Clip.F,D=(v.$Top||0)+(v.$Bottom||0),A=(v.$Left||0)+(v.$Right||0);d.$Left=(d.$Left||0)+A;d.$Top=(d.$Top||0)+D;d.$Clip.$Left-=A;d.$Clip.$Right-=A;d.$Clip.$Top-=D;d.$Clip.$Bottom-=D}if(d.$Clip&&a.cd()&&!d.$Clip.$Top&&!d.$Clip.$Left&&d.$Clip.$Right==g.Qb&&d.$Clip.$Bottom==g.Fb)d.$Clip=e;a.h(d,function(b,a){B[a]&&B[a](O,b)})}f.xb(t-k,p-k)}t=p;a.h(u,function(b,c){var a=w<j?u[u.length-c-1]:b;a.y(w,G)});var P=j,N=w;j=n;E=c;f.nb(P,N)}}function F(a,c){c&&a.qc(h,1);h=b.max(h,a.S());u.push(a)}function H(){if(r){var d=a.v(),e=b.min(d-A,a.gc()?80:20),c=j+e*p;A=d;if(c*p>=o*p)c=o;w(c);if(!y&&c*p>=o*p)J(D);else a.$Delay(H,g.$Interval)}}function v(d,e,g){if(!r){r=c;y=g;D=e;d=b.max(d,i);d=b.min(d,h);o=d;p=o<j?-1:1;f.Ic();A=a.v();H()}}function J(a){if(r){y=r=D=d;f.Ec();a&&a()}}f.$Play=function(a,b,c){v(a?j+a:h,b,c)};f.Gc=function(b,a,c){v(b,a,c)};f.L=function(){J()};f.hd=function(a){v(a)};f.H=function(){return j};f.Vb=function(){return o};f.mb=function(){return t};f.y=w;f.fc=function(){w(i,c)};f.$Move=function(a){w(j+a)};f.$IsPlaying=function(){return r};f.Nc=function(a){q=a};f.qc=N;f.$Shift=I;f.Gb=function(a){F(a,0)};f.Db=function(a){F(a,1)};f.S=function(){return h};f.nb=a.M;f.Ic=a.M;f.Ec=a.M;f.xb=a.M;f.tb=a.v();g=a.l({$Interval:15},g);q=g.dc;B=a.l({},a.Sc(),g.hc);i=k=n;h=n+m;var M=g.$Round||{},L=g.$During||{};C=a.l({lb:a.Wc(g.$Easing)&&g.$Easing||l.$EaseSwing},g.$Easing)};var s;new function(){;function n(o,dc){var i=this;function yc(){var a=this;j.call(a,-1e8,2e8);a.fe=function(){var c=a.mb(),d=b.floor(c),f=u(d),e=c-b.floor(c);return{J:f,ae:d,Q:e}};a.nb=function(d,a){var e=b.floor(a);if(e!=a&&a>d)e++;Qb(e,c);i.c(n.$EVT_POSITION_CHANGE,u(a),u(d),a,d)}}function xc(){var b=this;j.call(b,0,0,{dc:s});a.h(C,function(a){T&1&&a.Nc(s);b.Db(a);a.$Shift(hb/Yb)})}function wc(){var a=this,b=Pb.$Elmt;j.call(a,-1,2,{$Easing:l.$EaseLinear,hc:{Q:Wb},dc:s},b,{Q:1},{Q:-1});a.ib=b}function lc(o,m){var a=this,f,g,h,l,b;j.call(a,-1e8,2e8);a.Ic=function(){Q=c;V=e;i.c(n.$EVT_SWIPE_START,u(y.H()),y.H())};a.Ec=function(){Q=d;l=d;var a=y.fe();i.c(n.$EVT_SWIPE_END,u(y.H()),y.H());!a.Q&&Ac(a.ae,q)};a.nb=function(d,c){var a;if(l)a=b;else{a=g;if(h)a=k.$SlideEasing(c/h)*(g-f)+f}y.y(a)};a.bb=function(b,d,c,e){f=b;g=d;h=c;y.y(b);a.y(0);a.Gc(c,e)};a.we=function(d){l=c;b=d;a.$Play(d,e,c)};a.oe=function(a){b=a};y=new yc;y.Gb(o);y.Gb(m)}function mc(){var c=this,b=Vb();a.x(b,0);c.$Elmt=b;c.ab=function(){a.w(b);a.ac(b)}}function vc(p,o){var f=this,t,w,K,y,g,z=[],T,r,X,I,P,F,l,v,h;j.call(f,-x,x+1,{});function E(a){w&&w.Nb();t&&t.Nb();W(p,a);F=c;t=new M.$Class(p,M,1);w=new M.$Class(p,M);w.fc();t.fc()}function Z(){t.tb<M.tb&&E()}function L(o,q,m){if(!I){I=c;if(g&&m){var e=m.width,b=m.height,l=e,j=b;if(e&&b&&k.$FillMode){if(k.$FillMode&3&&(!(k.$FillMode&4)||e>J||b>H)){var h=d,p=J/H*b/e;if(k.$FillMode&1)h=p>1;else if(k.$FillMode&2)h=p<1;l=h?e*H/b:J;j=h?H:b*J/e}a.g(g,l);a.f(g,j);a.i(g,(H-j)/2);a.m(g,(J-l)/2)}a.r(g,"absolute");i.c(n.$EVT_LOAD_END,bc)}}a.w(q);o&&o(f)}function Y(b,c,d,e){if(e==V&&q==o&&R)if(!zc){var a=u(b);A.le(a,o,c,f,d);c.yd();ab.qc(a,1);ab.y(a);B.bb(b,b,0)}}function cb(b){if(b==V&&q==o){if(!l){var a=e;if(A)if(A.J==o)a=A.ke();else A.ab();Z();l=new tc(o,a,f.Bd(),f.Cd());l.Fc(h)}!l.$IsPlaying()&&l.Cb()}}function Q(d,c){if(d==o){if(d!=c)C[c]&&C[c].zd();h&&h.$Enable();var j=V=a.v();f.O(a.p(e,cb,j))}else{var i=b.abs(o-d),g=x+k.$LazyLoading;(!P||i<=g||s-i<=g)&&f.O()}}function fb(){if(q==o&&l){l.L();h&&h.$Quit();h&&h.$Disable();l.Hc()}}function gb(){q==o&&l&&l.L()}function O(b){if(U)a.N(b);else i.c(n.$EVT_CLICK,o,b)}function N(){h=v.pInstance;l&&l.Fc(h)}f.O=function(d,b){b=b||y;if(z.length&&!I){a.o(b);if(!X){X=c;i.c(n.$EVT_LOAD_START);a.h(z,function(b){if(!b.src){b.src=a.K(b,"src2");a.A(b,b["display-origin"])}})}a.jd(z,g,a.p(e,L,d,b))}else L(d,b)};f.sd=function(){if(A){var b=A.kd(s);if(b){var f=V=a.v(),c=o+1*Ub,d=C[u(c)];return d.O(a.p(e,Y,c,d,b,f),y)}}bb(q+k.$AutoPlaySteps*Ub)};f.wb=function(){Q(o,o)};f.zd=function(){h&&h.$Quit();h&&h.$Disable();f.sc();l&&l.rd();l=e;E()};f.yd=function(){a.w(p)};f.sc=function(){a.o(p)};f.Qd=function(){h&&h.$Enable()};function W(b,f,e){if(b["jssor-slider"]||a.sb(b,"u")=="thumb")return;e=e||0;if(!F){if(b.tagName=="IMG"){z.push(b);if(!b.src){P=c;b["display-origin"]=a.A(b);a.w(b)}}a.Bb()&&a.x(b,(a.x(b)||0)+1);if(k.$HWA&&a.jc()>0)(!G||a.jc()<534||!eb)&&a.he(b)}var h=a.fb(b);a.h(h,function(h){var j=a.K(h,"u");if(j=="player"&&!v){v=h;if(v.pInstance)N();else a.e(v,"dataavailable",N)}if(j=="caption"){if(!a.yb()&&!f){var i=a.t(h,c);a.cb(b,i,h);a.X(b,h);h=i;f=c}}else if(!F&&!e&&!g&&a.K(h,"u")=="image"){g=h;if(g){if(g.tagName=="A"){T=g;a.E(T,S);r=a.t(g,d);a.e(r,"click",O);a.E(r,S);a.A(r,"block");a.Eb(r,0);a.yc(r,"backgroundColor","#000");g=a.Zc(g,"IMG")}g.border=0;a.E(g,S)}}W(h,f,e+1)})}f.xb=function(c,b){var a=x-b;Wb(K,a)};f.Bd=function(){return t};f.Cd=function(){return w};f.J=o;m.call(f);var D=a.n(p,"thumb");if(D){f.Pd=a.t(D,c);a.ob(D,"id");a.w(D)}a.o(p);y=a.t(db,c);a.x(y,1e3);a.e(p,"click",O);E(c);f.Yb=g;f.rc=r;f.ib=K=p;a.s(K,y);i.$On(203,Q);i.$On(22,gb);i.$On(24,fb)}function tc(g,r,v,u){var b=this,m=0,x=0,o,h,e,f,l,s,w,t,p=C[g];j.call(b,0,0);function y(){a.Vc(N);cc&&l&&p.rc&&a.s(N,p.rc);a.o(N,l||!p.Yb)}function z(){if(s){s=d;i.c(n.$EVT_ROLLBACK_END,g,e,m,h,e,f);b.y(h)}b.Cb()}function B(a){t=a;b.L();b.Cb()}b.Cb=function(){var a=b.mb();if(!I&&!Q&&!t&&q==g){if(!a){if(o&&!l){l=c;b.Hc(c);i.c(n.$EVT_SLIDESHOW_START,g,m,x,o,f)}y()}var d,k=n.$EVT_STATE_CHANGE;if(a!=f)if(a==e)d=f;else if(a==h)d=e;else if(!a)d=h;else if(a>e){s=c;d=e;k=n.$EVT_ROLLBACK_START}else d=b.Vb();i.c(k,g,a,m,h,e,f);var j=R&&(!Sb||Z);if(a==f)j&&p.sd();else(j||a!=e)&&b.Gc(d,z)}};b.rd=function(){A&&A.J==g&&A.ab();var a=b.mb();a<f&&i.c(n.$EVT_STATE_CHANGE,g,-a-1,m,h,e,f)};b.Hc=function(b){r&&a.R(jb,b&&r.cc.$Outside?"":"hidden")};b.xb=function(b,a){if(l&&a>=o){l=d;y();p.sc();A.ab();i.c(n.$EVT_SLIDESHOW_END,g,m,x,o,f)}i.c(n.$EVT_PROGRESS_CHANGE,g,a,m,h,e,f)};b.Fc=function(a){if(a&&!w){w=a;a.$On($JssorPlayer$.Pc,B)}};r&&b.Db(r);o=b.S();b.S();b.Db(v);h=v.S();e=h+k.$AutoPlayInterval;u.$Shift(e);b.Gb(u);f=b.S()}function Wb(c,g){var f=w>0?w:ib,d=b.round(zb*g*(f&1)),e=b.round(Ab*g*(f>>1&1));if(a.yb()&&a.U()>=10&&a.U()<11)c.style.msTransform="translate("+d+"px, "+e+"px)";else if(a.Tb()&&a.U()>=30&&a.U()<34){c.style.WebkitTransition="transform 0s";c.style.WebkitTransform="translate3d("+d+"px, "+e+"px, 0px) perspective(2000px)"}else{a.m(c,d);a.i(c,e)}}function rc(a){U=0;!K&&pc()&&qc(a)}function qc(b){pb=Q;I=c;yb=d;V=e;a.e(f,nb,Zb);a.v();Hb=B.Vb();B.L();if(!pb)w=0;if(G){var h=b.touches[0];tb=h.clientX;ub=h.clientY}else{var g=a.bc(b);tb=g.x;ub=g.y;a.N(b)}E=0;cb=0;gb=0;D=y.H();i.c(n.$EVT_DRAG_START,u(D),D,b)}function Zb(e){if(I&&(!a.Bb()||e.button)){var f;if(G){var m=e.touches;if(m&&m.length>0)f=new h(m[0].clientX,m[0].clientY)}else f=a.bc(e);if(f){var k=f.x-tb,l=f.y-ub;if(b.floor(D)!=D)w=w||ib&K;if((k||l)&&!w){if(K==3)if(b.abs(l)>b.abs(k))w=2;else w=1;else w=K;if(G&&w==1&&b.abs(l)-b.abs(k)>3)yb=c}if(w){var d=l,j=Ab;if(w==1){d=k;j=zb}if(!(T&1)){if(d>0){var g=j*q,i=d-g;if(i>0)d=g+b.sqrt(i)*5}if(d<0){var g=j*(s-x-q),i=-d-g;if(i>0)d=-g-b.sqrt(i)*5}}if(E-cb<-2)gb=1;else if(E-cb>2)gb=0;cb=E;E=d;rb=D-E/j/(mb||1);if(E&&w&&!yb){a.N(e);if(!Q)B.we(rb);else B.oe(rb)}else a.Bb()&&a.N(e)}}}else Db(e)}function Db(h){nc();if(I){I=d;a.v();a.Qc(f,nb,Zb);U=E;U&&a.N(h);B.L();var e=y.H();i.c(n.$EVT_DRAG_END,u(e),e,u(D),D,h);var c=b.floor(D);if(b.abs(E)>=k.$MinDragOffsetToSlide){c=b.floor(e);c+=gb}if(!(T&1))c=b.min(s-x,b.max(c,0));var g=b.abs(c-e);g=1-b.pow(1-g,5);if(!U&&pb)B.hd(Hb);else if(e==c){sb.Qd();sb.wb()}else B.bb(e,c,g*Rb)}}function kc(a){C[q];q=u(a);sb=C[q];Qb(a);return q}function Ac(a,b){w=0;kc(a);i.c(n.$EVT_PARK,u(a),b)}function Qb(b,c){wb=b;a.h(P,function(a){a.Rb(u(b),b,c)})}function pc(){var b=n.xc||0,a=O;if(G)a&1&&(a&=1);n.xc|=a;return K=a&~b}function nc(){if(K){n.xc&=~O;K=0}}function Vb(){var b=a.gb();a.E(b,S);a.r(b,"absolute");return b}function u(a){return(a%s+s)%s}function hc(a,c){if(c)if(!T){a=b.min(b.max(a+wb,0),s-1);c=d}else if(T&2){a=u(a+wb);c=d}bb(a,k.$SlideDuration,c)}function xb(){a.h(P,function(a){a.Ob(a.db.$ChanceToShow>Z)})}function fc(b){b=a.qb(b);var c=b.target?b.target:b.srcElement,d=b.relatedTarget?b.relatedTarget:b.toElement;if(!a.oc(o,c)||a.oc(o,d))return;Z=1;xb();C[q].wb()}function ec(){Z=0;xb()}function gc(){S={Kb:J,Lb:H,$Top:0,$Left:0};a.h(X,function(b){a.E(b,S);a.r(b,"absolute");a.R(b,"hidden");a.w(b)});a.E(db,S)}function kb(b,a){bb(b,a,c)}function bb(h,g,l){if(Nb&&(!I||k.$NaviQuitDrag)){Q=c;I=d;B.L();if(a.Ub(g))g=Rb;var f=Eb.mb(),e=h;if(l){e=f+h;if(h>0)e=b.ceil(e);else e=b.floor(e)}if(!(T&1)){e=u(e);e=b.max(0,b.min(e,s-x))}var j=(e-f)%s;e=f+j;var i=f==e?0:g*b.abs(j);i=b.min(i,g*x*1.5);B.bb(f,e,i||1)}}i.$PlayTo=bb;i.$GoTo=function(a){bb(a,1)};i.$Next=function(){kb(1)};i.$Prev=function(){kb(-1)};i.$Pause=function(){R=d};i.$Play=function(){if(!R){R=c;C[q]&&C[q].wb()}};i.$SetSlideshowTransitions=function(a){k.$SlideshowOptions.$Transitions=a};i.$SetCaptionTransitions=function(b){M.tb=a.v()};i.$SlidesCount=function(){return X.length};i.$CurrentIndex=function(){return q};i.$IsAutoPlaying=function(){return R};i.$IsDragging=function(){return I};i.$IsSliding=function(){return Q};i.$IsMouseOver=function(){return!Z};i.$LastDragSucceded=function(){return U};i.$GetOriginalWidth=function(){return a.g(v||o)};i.$GetOriginalHeight=function(){return a.f(v||o)};i.$GetScaleWidth=function(){return a.g(o)};i.$GetScaleHeight=function(){return a.f(o)};i.$SetScaleWidth=function(c){if(!v){var b=a.t(o,d);a.ob(b,"id");a.r(b,"relative");a.i(b,0);a.m(b,0);a.R(b,"visible");v=a.t(o,d);a.ob(v,"id");a.ub(v,"");a.r(v,"absolute");a.i(v,0);a.m(v,0);a.g(v,a.g(o));a.f(v,a.f(o));a.je(v,"0 0");a.s(v,b);var f=a.fb(o);a.s(o,v);var e={navigator:Y&&Y.$Scale==d,arrowleft:L&&L.$Scale==d,arrowright:L&&L.$Scale==d,thumbnavigator:F&&F.$Scale==d,thumbwrapper:F&&F.$Scale==d};a.h(f,function(c){a.s(e[a.K(c,"u")]?o:b,c)});a.o(b);a.o(v)}mb=c/a.g(v);a.ge(v,mb);a.g(o,c);a.f(o,mb*a.f(v));a.h(P,function(a){a.Pb()})};i.uc=function(a){var d=b.ceil(u(hb/Yb)),c=u(a-q+d);if(c>x){if(a-q>s/2)a-=s;else if(a-q<=-s/2)a+=s}else a=q+c-d;return a};m.call(this);i.$Elmt=o=a.C(o);var k=a.l({$FillMode:0,$LazyLoading:1,$StartIndex:0,$AutoPlay:d,$Loop:1,$HWA:c,$NaviQuitDrag:c,$AutoPlaySteps:1,$AutoPlayInterval:3e3,$PauseOnHover:1,$SlideDuration:500,$SlideEasing:l.$EaseOutQuad,$MinDragOffsetToSlide:20,$SlideSpacing:0,$DisplayPieces:1,$ParkingPosition:0,$UISearchMode:1,$PlayOrientation:1,$DragOrientation:1},dc),ib=k.$PlayOrientation&3,Ub=(k.$PlayOrientation&4)/-4||1,fb=k.$SlideshowOptions,M=a.l({$Class:t},k.Ke),Y=k.$BulletNavigatorOptions,L=k.$ArrowNavigatorOptions,F=k.$ThumbnailNavigatorOptions,W=k.$UISearchMode,v,z=a.n(o,"slides",e,W),db=a.n(o,"loading",e,W)||a.gb(f),Jb=a.n(o,"navigator",e,W),ac=a.n(o,"arrowleft",e,W),Xb=a.n(o,"arrowright",e,W),Gb=a.n(o,"thumbnavigator",e,W),jc=a.g(z),ic=a.f(z),S,X=[],sc=a.fb(z);a.h(sc,function(b){b.tagName=="DIV"&&!a.K(b,"u")&&X.push(b)});var q=-1,wb,sb,s=X.length,J=k.$SlideWidth||jc,H=k.$SlideHeight||ic,Tb=k.$SlideSpacing,zb=J+Tb,Ab=H+Tb,Yb=ib&1?zb:Ab,x=b.min(k.$DisplayPieces,s),jb,w,K,yb,G,P=[],Mb,Ob,Lb,cc,zc,R,Sb=k.$PauseOnHover,Rb=k.$SlideDuration,qb,eb,hb,Nb=x<s,T=Nb?k.$Loop:0,O,U,Z=1,Q,I,V,tb=0,ub=0,E,cb,gb,Eb,y,ab,B,Pb=new mc,mb;R=k.$AutoPlay;i.db=dc;gc();o["jssor-slider"]=c;a.x(z,a.x(z)||0);a.r(z,"absolute");jb=a.t(z);a.cb(a.V(z),jb,z);if(fb){cc=fb.$ShowLink;qb=fb.$Class;eb=x==1&&s>1&&qb&&(!a.yb()||a.U()>=8)}hb=eb||x>=s||!(T&1)?0:k.$ParkingPosition;O=x>1||hb?ib:k.$DragOrientation;var vb=z,C=[],A,N,Cb="mousedown",nb="mousemove",Fb="mouseup",lb,D,pb,Hb,rb;if(g.navigator.msPointerEnabled){Cb="MSPointerDown";nb="MSPointerMove";Fb="MSPointerUp";lb="MSPointerCancel";if(O){var Bb="none";if(O==1)Bb="pan-y";else if(O==2)Bb="pan-x";a.Kc(vb.style,"-ms-touch-action",Bb)}}else if("ontouchstart"in g||"createTouch"in f){G=c;Cb="touchstart";nb="touchmove";Fb="touchend";lb="touchcancel"}ab=new wc;if(eb)A=new qb(Pb,J,H,fb,G);a.s(jb,ab.ib);a.R(z,"hidden");N=Vb();a.yc(N,"backgroundColor","#000");a.Eb(N,0);a.cb(vb,N,vb.firstChild);for(var ob=0;ob<X.length;ob++){var uc=X[ob],bc=new vc(uc,ob);C.push(bc)}a.w(db);Eb=new xc;B=new lc(Eb,ab);if(O){a.e(z,Cb,rc);a.e(f,Fb,Db);lb&&a.e(f,lb,Db)}Sb&=G?2:1;if(Jb&&Y){Mb=new Y.$Class(Jb,Y);P.push(Mb)}if(L&&ac&&Xb){Ob=new L.$Class(ac,Xb,L);P.push(Ob)}if(Gb&&F){F.$StartIndex=k.$StartIndex;Lb=new F.$Class(Gb,F);P.push(Lb)}a.h(P,function(a){a.Ib(s,C,db);a.$On(p.jb,hc)});i.$SetScaleWidth(i.$GetOriginalWidth());a.e(o,"mouseout",fc);a.e(o,"mouseover",ec);xb();k.$ArrowKeyNavigation&&a.e(f,"keydown",function(a){if(a.keyCode==r.Sd)kb(-1);else a.keyCode==r.td&&kb(1)});B.bb(k.$StartIndex,k.$StartIndex,0)}n.$EVT_CLICK=21;n.$EVT_DRAG_START=22;n.$EVT_DRAG_END=23;n.$EVT_SWIPE_START=24;n.$EVT_SWIPE_END=25;n.$EVT_LOAD_START=26;n.$EVT_LOAD_END=27;n.$EVT_POSITION_CHANGE=202;n.$EVT_PARK=203;n.$EVT_SLIDESHOW_START=206;n.$EVT_SLIDESHOW_END=207;n.$EVT_PROGRESS_CHANGE=208;n.$EVT_STATE_CHANGE=209;n.$EVT_ROLLBACK_START=210;n.$EVT_ROLLBACK_END=211;g.$JssorSlider$=s=n};var p={jb:1};g.$JssorBulletNavigator$=function(f,D){var h=this;m.call(h);f=a.C(f);var t,u,s,r,l=0,g,n,k,y,z,j,i,q,o,C=[],A=[];function x(a){a!=-1&&A[a].zc(a==l)}function v(a){h.c(p.jb,a*n)}h.$Elmt=f;h.Rb=function(a){if(a!=r){var d=l,c=b.floor(a/n);l=c;r=a;x(d);x(c)}};h.Ob=function(b){a.o(f,b)};var B;h.Pb=function(){if(!B||g.$Scale==d){g.$AutoCenter&1&&a.m(f,(a.g(a.V(f))-u)/2);g.$AutoCenter&2&&a.i(f,(a.f(a.V(f))-s)/2);B=c}};var w;h.Ib=function(D){if(!w){t=b.ceil(D/n);l=0;var p=q+y,r=o+z,m=b.ceil(t/k)-1;u=q+p*(!j?m:k-1);s=o+r*(j?m:k-1);a.g(f,u);a.f(f,s);for(var d=0;d<t;d++){var B=a.Uc();a.dd(B,d+1);var h=a.mc(i,"NumberTemplate",B,c);a.r(h,"absolute");var x=d%(m+1);a.m(h,!j?p*x:d%k*p);a.i(h,j?r*x:b.floor(d/(m+1))*r);a.s(f,h);C[d]=h;g.$ActionMode&1&&a.e(h,"click",a.p(e,v,d));g.$ActionMode&2&&a.e(h,"mouseover",a.p(e,v,d));A[d]=a.eb(h)}w=c}};h.db=g=a.l({$SpacingX:0,$SpacingY:0,$Orientation:1,$ActionMode:1},D);i=a.n(f,"prototype");q=a.g(i);o=a.f(i);a.X(f,i);n=g.$Steps||1;k=g.$Lanes||1;y=g.$SpacingX;z=g.$SpacingY;j=g.$Orientation-1};g.$JssorArrowNavigator$=function(b,g,s){var f=this;m.call(f);var h,j,q=a.V(b),o=a.g(b),l=a.f(b);function k(a){f.c(p.jb,a,c)}f.Rb=function(b,a,c){if(c);};f.Ob=function(c){a.o(b,c);a.o(g,c)};var r;f.Pb=function(){if(!r||h.$Scale==d){var f=a.g(q),e=a.f(q);if(h.$AutoCenter&1){a.m(b,(f-o)/2);a.m(g,(f-o)/2)}if(h.$AutoCenter&2){a.i(b,(e-l)/2);a.i(g,(e-l)/2)}r=c}};var n;f.Ib=function(d){if(!n){a.e(b,"click",a.p(e,k,-j));a.e(g,"click",a.p(e,k,j));a.eb(b);a.eb(g);n=c}};f.db=h=a.l({$Steps:1},s);j=h.$Steps};g.$JssorThumbnailNavigator$=function(i,A){var h=this,x,l,e,u=[],y,w,f,n,o,t,r,k,q,g,j;m.call(h);i=a.C(i);function z(n,d){var g=this,b,m,k;function o(){m.zc(l==d)}function i(){if(!q.$LastDragSucceded()){var a=(f-d%f)%f,b=q.uc((d+a)/f),c=b*f-a;h.c(p.jb,c)}}g.J=d;g.Zb=o;k=n.Pd||n.Yb||a.gb();g.ib=b=a.mc(j,"ThumbnailTemplate",k,c);m=a.eb(b);e.$ActionMode&1&&a.e(b,"click",i);e.$ActionMode&2&&a.e(b,"mouseover",i)}h.Rb=function(c,d,e){var a=l;l=c;a!=-1&&u[a].Zb();u[c].Zb();!e&&q.$PlayTo(q.uc(b.floor(d/f)))};h.Ob=function(b){a.o(i,b)};h.Pb=a.M;var v;h.Ib=function(F,D){if(!v){x=F;b.ceil(x/f);l=-1;k=b.min(k,D.length);var h=e.$Orientation&1,p=t+(t+n)*(f-1)*(1-h),m=r+(r+o)*(f-1)*h,C=p+(p+n)*(k-1)*h,A=m+(m+o)*(k-1)*(1-h);a.r(g,"absolute");a.R(g,"hidden");e.$AutoCenter&1&&a.m(g,(y-C)/2);e.$AutoCenter&2&&a.i(g,(w-A)/2);a.g(g,C);a.f(g,A);var j=[];a.h(D,function(l,e){var i=new z(l,e),d=i.ib,c=b.floor(e/f),k=e%f;a.m(d,(t+n)*k*(1-h));a.i(d,(r+o)*k*h);if(!j[c]){j[c]=a.gb();a.s(g,j[c])}a.s(j[c],d);u.push(i)});var E=a.l({$AutoPlay:d,$NaviQuitDrag:d,$SlideWidth:p,$SlideHeight:m,$SlideSpacing:n*h+o*(1-h),$MinDragOffsetToSlide:12,$SlideDuration:200,$PauseOnHover:1,$PlayOrientation:e.$Orientation,$DragOrientation:e.$DisableDrag?0:e.$Orientation},e);q=new s(i,E);v=c}};h.db=e=a.l({$SpacingX:3,$SpacingY:3,$DisplayPieces:1,$Orientation:1,$AutoCenter:3,$ActionMode:1},A);y=a.g(i);w=a.f(i);g=a.n(i,"slides");j=a.n(g,"prototype");t=a.g(j);r=a.f(j);a.X(g,j);f=e.$Lanes||1;n=e.$SpacingX;o=e.$SpacingY;k=e.$DisplayPieces};function t(){j.call(this,0,0);this.Nb=a.M}})(window,document,Math,null,true,false)