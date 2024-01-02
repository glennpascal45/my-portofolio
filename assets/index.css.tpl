/**!
 * Not meant as a reference for good CSS practices. The goal of Hugo in Action
 * is for us to understand Hugo. The HTML/CSS/JS code has been intentionally
 * made complicated so that we can simplify the Go HTML Template pieces of Hugo. 
 * There are intentional cases where CSS selectors are used instead of class
 * parameters for targeting. Many of the targeting done in CSS is more
 * specific than it should be. Some of the decisions taken are sub-optimal.
 * You are free to use this code on your website but beware of caveats and
 * do understand that support may be lacking where expected.
 **/
{{ $color := site.Params.color | default "#4f46e5" }}
{{ $b := substr $color -2 2 | print "0x" | int}} 
{{ $g := substr $color -4 2 | print "0x" | int}}
{{ $r := substr $color -6 2 | print "0x" | int}} 
:root {
  --red: {{$r}};
  --green: {{$g}};
  --blue: {{$b}};

  -moz-tab-size: 4;
  tab-size: 4;
}
html {
  -webkit-text-size-adjust: 100%;
  font-family: ui-sans-serif,system-ui,-apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,Noto Sans,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;
  line-height: 1.5;
  {{ $background := resources.GetMatch "image/background.svg.tpl" | resources.ExecuteAsTemplate "background.svg" "nothing" }}
  background: url({{$background.Permalink}}) 0 0/cover;
  min-height: 100vh;
  width: 100vw;
  scroll-snap-type: y proximity;
  max-height: 100vh;
}
body {
  margin: 0 auto;
  font-family: system-ui,-apple-system,Segoe UI,Roboto,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji;
  font-family: inherit;
  line-height: inherit;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  width: 100vw;
}
hr {
  height: 0;
  color: inherit;
  border-top-width: 1px;
}
strong {
  font-weight: bolder;
}
code,
pre {
  font-size: 1em;
  font-family: ui-monospace,SFMono-Regular,Menlo,Monaco,Consolas,Liberation Mono,Courier New,monospace;
}
small {
  font-size: 80%;
}
sup {
  font-size: 75%;
  line-height: 0;
  position: relative;
  vertical-align: baseline;
  top: -.5em;
}
table {
  text-indent: 0;
  border-color: inherit;
  border-collapse: collapse;
}
button,
input,
select,
textarea {
  font-family: inherit;
  font-size: 100%;
  line-height: 1.15;
  margin: 0;
  padding: 0;
  line-height: inherit;
  color: inherit;
}
button,
select {
  text-transform: none;
}
[type=button],
[type=submit],
button {
  -webkit-appearance: button;
}
[type=search] {
  -webkit-appearance: textfield;
  outline-offset: -2px;
}
summary {
  display: list-item;
}
blockquote,
dd,
dl,
figure,
h1,
h2,
h3,
h6,
hr,
p,
pre {
  margin: 0;
}
button {
  background-color: transparent;
  background-image: none;
}
button:focus {
  outline: dotted 1px;
  outline: -webkit-focus-ring-color auto 5px;
}
ol,
ul {
  list-style: none;
  margin: 0;
  padding: 0;
}
*,
:after,
:before {
  box-sizing: border-box;
  border: 0 solid #e5e7eb;
}
img {
  border-style: solid;
}
textarea {
  resize: vertical;
}
input::placeholder,
textarea::placeholder {
  color: #6b7280;
  opacity: 1;
}
[role=button],
button {
  cursor: pointer;
}
h1,
h2,
h3,
h6 {
  font-size: inherit;
  font-weight: inherit;
}
a {
  color: inherit;
  text-decoration: inherit;
}
iframe,
img,
svg,
video {
  display: block;
  vertical-align: middle;
}
img,
video {
  max-width: 100%;
  height: auto;
}
[multiple],
[type=email],
[type=search],
[type=text],
[type=time],
[type=url],
select,
textarea {
  appearance: none;
  background-color: #fff;
  border-color: #6b7280;
  border-width: 1px;
  border-radius: 0;
  padding: .5rem .75rem;
  font-size: 1rem;
  line-height: 1.5rem;
}
[multiple]:focus,
[type=email]:focus,
[type=search]:focus,
[type=text]:focus,
[type=time]:focus,
[type=url]:focus,
select:focus,
textarea:focus {
  outline: transparent solid 2px;
  outline-offset: 2px;
  box-shadow: 0 0 0 0 #fff,0 0 0 calc(1px + 0px) #2563eb,0 0 transparent;
  border-color: #2563eb;
}
select {
  background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 20 20'%3e%3cpath stroke='%236b7280' stroke-linecap='round' stroke-linejoin='round' stroke-width='1.5' d='M6 8l4 4 4-4'/%3e%3c/svg%3e");
  background-position: right .5rem center;
  background-repeat: no-repeat;
  background-size: 1.5em 1.5em;
  padding-right: 2.5rem;
  color-adjust: exact;
}
[multiple] {
  background-image: none;
  background-position: 0 0;
  background-repeat: unset;
  background-size: initial;
  padding-right: .75rem;
  color-adjust: unset;
}
[type=checkbox],
[type=radio] {
  appearance: none;
  padding: 0;
  color-adjust: exact;
  display: inline-block;
  vertical-align: middle;
  background-origin: border-box;
  user-select: none;
  flex-shrink: 0;
  height: 1rem;
  width: 1rem;
  color: #2563eb;
  background-color: #fff;
  border-color: #6b7280;
  border-width: 1px;
}
[type=checkbox] {
  border-radius: 0;
}
[type=radio] {
  border-radius: 100%;
}
[type=checkbox]:focus,
[type=radio]:focus {
  outline: transparent solid 2px;
  outline-offset: 2px;
  box-shadow: 0 0 0 2px #fff,0 0 0 calc(2px + 2px) #2563eb,0 0 transparent;
}
[type=checkbox]:checked,
[type=radio]:checked {
  border-color: transparent;
  background-color: currentColor;
  background-size: 100% 100%;
  background-position: 50%;
  background-repeat: no-repeat;
}
[type=checkbox]:checked {
  background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M12.207 4.793a1 1 0 010 1.414l-5 5a1 1 0 01-1.414 0l-2-2a1 1 0 011.414-1.414L6.5 9.086l4.293-4.293a1 1 0 011.414 0z'/%3e%3c/svg%3e");
}
[type=radio]:checked {
  background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3ccircle cx='8' cy='8' r='3'/%3e%3c/svg%3e");
}
[type=checkbox]:checked:focus,
[type=checkbox]:checked:hover,
[type=radio]:checked:focus,
[type=radio]:checked:hover {
  border-color: transparent;
  background-color: currentColor;
}
[type=checkbox]:indeterminate {
  background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 16 16'%3e%3cpath stroke='white' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M4 8h8'/%3e%3c/svg%3e");
  border-color: transparent;
  background-color: currentColor;
  background-size: 100% 100%;
  background-position: 50%;
  background-repeat: no-repeat;
}
[type=checkbox]:indeterminate:focus,
[type=checkbox]:indeterminate:hover {
  border-color: transparent;
  background-color: currentColor;
}
[type=file] {
  background: unset;
  border-color: inherit;
  border-width: 0;
  border-radius: 0;
  padding: 0;
  font-size: unset;
  line-height: inherit;
}
[type=file]:focus {
  outline: -webkit-focus-ring-color auto 1px;
}
body > * {
  width: 100%;
  margin-left: 1.25rem;
  margin-right: 1.25rem;
}
@media (min-width:640px) {
  body>*,
  header {
    max-width: 640px;
  }
}
@media (min-width:768px) {
  body > * {
    max-width: 768px;
    margin-left: 1.75rem;
    margin-right: 1.75rem;
  }
}
@media (min-width:1024px) {
  body > * {
    max-width: 1024px;
    margin-left: 2.5rem;
    margin-right: 2.5rem;
  }
}
.btn {
  background-color: #fff;
  border-radius: .75rem;
  border: 2px solid rgb(var(--red), var(--green), var(--blue));
  display: inline-block;
  font-weight: 400;
  font-size: 1rem;
  line-height: 1.5rem;
  margin-left: auto;
  margin-right: auto;
  padding: .5rem 1rem;
  color: rgb(var(--red), var(--green), var(--blue));
  text-decoration: none;
  transition-property: background-color,border-color,color,fill,stroke,opacity,box-shadow,transform,filter,backdrop-filter;
  transition-timing-function: cubic-bezier(.4,0,.2,1);
  transition-duration: .15s;
}
.btn:hover,
.home #description a:hover,
.home #products>a:hover,
.home #store>a:hover,
body.page form button:hover {
  background-color: rgb(var(--red), var(--green), var(--blue));
  color: #fff;
  text-decoration: none;
}
.btn:focus,
.home #description a:focus,
.home #products>a:focus,
.home #store>a:focus,
.home section:first-of-type>a:focus,
body.page form button:focus {
  box-shadow: 0 0 0 0 #fff,0 0 0 calc(4px + 0px) rgba(59,130,246,.5),0 0 transparent;
}
.icon-blog {
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 -10 32 50" enable-background="new 0 0 32 32" xml:space="preserve"><g fill="rgb({{$r}},{{$g}},{{$b}})" stroke="rgb({{$r}},{{$g}},{{$b}})"><path d="M23.8638,13.4961l-7-12c-0.3584-0.6143-1.3691-0.6143-1.7275,0l-7,12c-0.1396,0.2393-0.1738,0.5259-0.0942,0.791l2.8057,9.3521C9.7397,24.3513,9,25.5881,9,27v3c0,0.5522,0.4478,1,1,1h12c0.5522,0,1-0.4478,1-1v-3c0-1.4119-0.7397-2.6487-1.8477-3.3608l2.8057-9.3521C24.0376,14.022,24.0034,13.7354,23.8638,13.4961z M21,29H11v-2c0-1.103,0.897-2,2-2h6c1.103,0,2,0.897,2,2V29z M19.2559,23H19h-6h-0.2559l-2.6616-8.8711L15,5.6991v8.579 C14.4051,14.625,14,15.2629,14,16c0,1.103,0.897,2,2,2s2-0.897,2-2c0-0.7371-0.4051-1.375-1-1.7219v-8.579l4.9175,8.4298L19.2559,23z"/></g></svg>') 50% no-repeat;
}
.icon-facebook {
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="-8 -8 40 40"><rect x="-8" y="-8" width="40" height="40" rx="5" fill="rgba(17, 24, 39)"></rect><path fill="white" d="M9 8h-3v4h3v12h5v-12h3.642l.358-4h-4v-1.667c0-.955.192-1.333 1.115-1.333h2.885v-5h-3.808c-3.596 0-5.192 1.583-5.192 4.615v3.385z"/></svg>') 50% no-repeat;
}
.icon-rss {
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="-8 -8 40 40"><rect x="-8" y="-8" width="40" height="40" rx="5" fill="rgba(17, 24, 39)"></rect><path fill="white"  d="M6.503 20.752c0 1.794-1.456 3.248-3.251 3.248-1.796 0-3.252-1.454-3.252-3.248 0-1.794 1.456-3.248 3.252-3.248 1.795.001 3.251 1.454 3.251 3.248zm-6.503-12.572v4.811c6.05.062 10.96 4.966 11.022 11.009h4.817c-.062-8.71-7.118-15.758-15.839-15.82zm0-3.368c10.58.046 19.152 8.594 19.183 19.188h4.817c-.03-13.231-10.755-23.954-24-24v4.812z"/></svg>') 50% no-repeat;
}
.icon-twitter {
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="-8 -8 40 40"><rect x="-8" y="-8" width="40" height="40" rx="5" fill="rgba(17, 24, 39)"></rect><path fill="white" d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z"/></svg>') 50% no-repeat;
}
.icon-email {
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="-8 -8 40 40"><rect x="-8" y="-8" width="40" height="40" rx="5" fill="rgba(17, 24, 39)"></rect><path fill="white" d="M12 12.713l-11.985-9.713h23.97l-11.985 9.713zm0 2.574l-12-9.725v15.438h24v-15.438l-12 9.725z"/></svg>') 50% no-repeat;
}

.icon-github {
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M12 0C5.373 0 0 5.373 0 12c0 5.303 3.438 9.8 8.206 11.385.6.11.823-.26.823-.577 0-.285-.01-1.04-.015-2.04-3.338.723-4.042-1.605-4.042-1.605-.546-1.384-1.332-1.754-1.332-1.754-1.09-.745.083-.73.083-.73 1.205.085 1.838 1.238 1.838 1.238 1.07 1.834 2.806 1.304 3.49.996.108-.777.417-1.305.76-1.605-2.665-.303-5.466-1.333-5.466-5.93 0-1.31.468-2.38 1.236-3.22-.125-.302-.536-1.524.116-3.176 0 0 1.007-.322 3.3 1.23a11.57 11.57 0 0 1 3.016-.41c1.025.007 2.06.138 3.016.41 2.292-1.552 3.298-1.23 3.298-1.23.656 1.652.244 2.874.119 3.176.77.84 1.236 1.91 1.236 3.22 0 4.61-2.805 5.623-5.478 5.92.43.37.815 1.1.815 2.22 0 1.606-.015 2.896-.015 3.286 0 .318.217.692.83.573C20.57 21.792 24 17.303 24 12c0-6.627-5.373-12-12-12z" fill="white"/></svg>') 50% no-repeat;
}

.icon-linkedin {
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M4.52 2C3.42 2 2.52 2.9 2.52 4c0 1.1.9 2 2 2h.01c1.1 0 2-.9 2-2 0-1.1-.9-2-2-2zM4 6h-.01c-1.66 0-3 1.34-3 3v10c0 1.65 1.34 3 3 3h.01C5.65 22 7 20.65 7 19V9c0-1.66-1.35-3-3-3zm11.45 2c-1.36 0-2.19.76-2.55 1.45h-.03V8.8H9.5c.05 1.1 0 12.2 0 12.2h3.95v-6.75c0-.36.03-.72.14-1h.03c.25-.72 1.77-1.48 3.63-1.48 3.87 0 4.57 2.55 4.57 5.86v6.62h4.03v-7.55c0-4.36-.92-7.45-5.34-7.45z" fill="white"/></svg>') 50% no-repeat;
}
.icon-news {
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 -9 23 40" version="1.1" x="0px" y="0px"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g fill="rgb({{$r}},{{$g}},{{$b}})"><path d="M8,14 L10,14 L10,12 L8,12 L8,14 Z M5.5,2 C6.225,2 6.831,2.516 6.97,3.201 L6.97,3.201 C6.99,3.299 7,3.4 7,3.5 C7,4.327 6.327,5 5.5,5 C4.673,5 4,4.327 4,3.5 C4,3.4 4.01,3.299 4.03,3.201 L4.03,3.201 C4.169,2.516 4.775,2 5.5,2 L5.5,2 Z M12.5,2 C13.225,2 13.831,2.516 13.97,3.201 L13.97,3.201 C13.99,3.299 14,3.4 14,3.5 C14,4.327 13.327,5 12.5,5 C11.673,5 11,4.327 11,3.5 C11,3.4 11.01,3.299 11.03,3.201 L11.03,3.201 C11.169,2.516 11.775,2 12.5,2 L12.5,2 Z M22.493,3.13 C22.18,2.952 21.795,2.956 21.485,3.143 L18,5.234 L18,3 C18,2.448 17.553,2 17,2 L15.649,2 C15.085,0.822 13.891,0 12.5,0 C11.109,0 9.915,0.822 9.351,2 L8.649,2 C8.085,0.822 6.891,0 5.5,0 C4.109,0 2.915,0.822 2.351,2 L1,2 C0.447,2 0,2.448 0,3 L0,11 C0,11.552 0.447,12 1,12 L6,12 L6,15 C6,15.552 6.447,16 7,16 L7.196,16 L3.152,22.47 C2.859,22.938 3.002,23.555 3.47,23.848 C3.635,23.951 3.818,24 3.999,24 C4.332,24 4.658,23.833 4.848,23.53 L8,18.486 L8,23 C8,23.552 8.447,24 9,24 C9.553,24 10,23.552 10,23 L10,18.486 L13.152,23.53 C13.342,23.833 13.668,24 14.001,24 C14.182,24 14.365,23.951 14.53,23.848 C14.998,23.555 15.141,22.938 14.848,22.47 L10.804,16 L11,16 C11.553,16 12,15.552 12,15 L12,12 L17,12 C17.553,12 18,11.552 18,11 L18,8.766 L21.485,10.857 C21.644,10.953 21.822,11 22,11 C22.17,11 22.34,10.957 22.493,10.87 C22.807,10.693 23,10.36 23,10 L23,4 C23,3.64 22.807,3.307 22.493,3.13 L22.493,3.13 Z"/></g></g></svg>') 50% no-repeat;
}
.icon-about {
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" data-name="Layer 1" viewBox="0 -20 100 145" x="0px" y="0px"><g fill="rgb({{$r}},{{$g}},{{$b}})"><path d="M46.26,100H39.75a1.55,1.55,0,0,0-.29-0.22c-4.12-1.88-6.1-5.66-5-10.07,2.95-12.16,6-24.3,9-36.45a38,38,0,0,0,.89-5.11,1.19,1.19,0,0,0-1.59-1.42,9.62,9.62,0,0,0-2,.69c-1.48.62-2.92,1.35-4.41,1.92A2.51,2.51,0,0,1,33,48.7V46.33a26.86,26.86,0,0,1,3.41-3.91c4.46-3.51,9-6.86,13.63-10.21a15.35,15.35,0,0,1,3.16-1.59,7.68,7.68,0,0,1,4.61-.48c5.79,1.17,8.79,5.81,7.38,11.52Q60.9,59.22,56.57,76.78a47,47,0,0,0-1,5.79,1.13,1.13,0,0,0,1.64,1.28c1.09-.33,2.12-0.86,3.18-1.29C61.67,82,63,81.49,64.29,81a1.88,1.88,0,0,1,2.14.62,2,2,0,0,1,.21,2.3,8.53,8.53,0,0,1-1.23,1.89,33.23,33.23,0,0,1-3.47,3.35C57,93.14,51.94,97.05,46.26,100Z"/><path d="M54.68,24.63A12.31,12.31,0,1,1,67,12.34,12.28,12.28,0,0,1,54.68,24.63Z"/></g></svg>') 50% no-repeat;
}
.icon-contact {
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xml:space="preserve" style="shape-rendering:geometricPrecision;text-rendering:geometricPrecision;image-rendering:optimizeQuality;" viewBox="0 -20 110 145" x="0px" y="0px" fill-rule="evenodd" clip-rule="evenodd"><g fill="rgb({{$r}},{{$g}},{{$b}})"><path d="M81.8794 81.9054l-8.89613 -15.4088c-1.35474,-2.34569 -4.57208,-3.04727 -7.14927,-1.55907l-7.8792 4.54964c-9.70638,-6.43588 -19.6159,-23.5951 -20.334,-35.2184l7.8792 -4.54964c2.57837,-1.4882 3.58113,-4.62287 2.22521,-6.97092l-8.89613 -15.4088c-1.35592,-2.34805 -4.57208,-3.04727 -7.14927,-1.55789l-8.23471 4.75397c-13.5946,7.84849 -0.421657,40.9137 5.95517,51.9583 6.378,11.0469 28.4258,38.985 42.0192,31.1365l8.23471 -4.75397c2.57837,-1.48938 3.57995,-4.62523 2.22521,-6.97092z"/></g></svg>') 50% no-repeat;
}
.icon-editor {
  background: url("data:image/svg+xml;utf8,<svg version='1.1' id='Layer_1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' x='0px' y='0px' viewBox='0 0 554.3 551.2' style='enable-background:new 0 0 554.3 551.2;' xml:space='preserve'><style type='text/css'> .st0{fill:rgb({{$r}},{{$g}},{{$b}});stroke:rgb({{$r}},{{$g}},{{$b}});stroke-width:22;stroke-miterlimit:10;}</style><path class='st0' d='M59.3,62.6v157.5h157.5V62.6H59.3z M59.3,23.3h157.5c21.8,0,39.4,17.6,39.4,39.4c0,0,0,0,0,0v157.5 c0,21.8-17.6,39.4-39.4,39.4c0,0,0,0,0,0H59.3c-21.8,0-39.4-17.6-39.4-39.4V62.6C19.9,40.9,37.5,23.3,59.3,23.3z M59.3,338.3v157.5 h157.5V338.3H59.3z M59.3,299h157.5c21.8,0,39.4,17.6,39.4,39.4v0v157.5c0,21.8-17.6,39.4-39.4,39.4c0,0,0,0,0,0H59.3 c-21.8,0-39.4-17.6-39.4-39.4l0,0V338.3C19.9,316.6,37.5,299,59.3,299C59.3,299,59.3,299,59.3,299z M413.8,62.6 c-43.5,0-78.8,35.3-78.8,78.8s35.3,78.8,78.8,78.8c43.5,0,78.8-35.3,78.7-78.8C492.5,97.9,457.2,62.7,413.8,62.6L413.8,62.6z M413.8,23.3c65.3,0,118.2,52.9,118.2,118.1c0,65.3-52.9,118.2-118.1,118.2c0,0,0,0-0.1,0c-65.3,0-118.1-52.9-118.1-118.2 C295.7,76.2,348.5,23.3,413.8,23.3z M335,338.3v157.5h157.5V338.3H335z M335,299h157.5c21.8,0,39.4,17.6,39.4,39.4v0v157.5 c0,21.8-17.6,39.4-39.4,39.4h0H335c-21.8,0-39.4-17.6-39.4-39.4v0V338.3C295.6,316.6,313.2,299,335,299L335,299z'/></svg>") 50% no-repeat;
}
.icon-store {
  background: url("data:image/svg+xml;utf8,<svg id='Layer_1' data-name='Layer 1' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 122.88 111.85'><path fill='rgb({{$r}},{{$g}},{{$b}})' stroke='rgb({{$r}},{{$g}},{{$b}})' stroke-width='' d='M4.06,8.22A4.15,4.15,0,0,1,0,4.06,4.13,4.13,0,0,1,4.06,0h6A19.12,19.12,0,0,1,20,2.6c5.44,3.45,6.41,8.38,7.8,13.94h91a4.07,4.07,0,0,1,4.06,4.06,5,5,0,0,1-.21,1.25L112.06,64.61a4,4,0,0,1-4,3.13H41.51c1.46,5.41,2.92,8.32,4.89,9.67C48.8,79,53,79.08,59.93,79h47.13a4.06,4.06,0,0,1,0,8.12H60c-8.63.1-13.94-.11-18.2-2.91s-6.66-7.91-8.95-17h0L18.94,14.46c0-.1,0-.1-.11-.21a7.26,7.26,0,0,0-3.12-4.68A10.65,10.65,0,0,0,10,8.22H4.06Zm80.32,25a2.89,2.89,0,0,1,5.66,0V48.93a2.89,2.89,0,0,1-5.66,0V33.24Zm-16.95,0a2.89,2.89,0,0,1,5.67,0V48.93a2.89,2.89,0,0,1-5.67,0V33.24Zm-16.94,0a2.89,2.89,0,0,1,5.66,0V48.93a2.89,2.89,0,0,1-5.66,0V33.24Zm41.72-8.58H30.07l9.26,34.86H105l8.64-34.86Zm2.68,67.21a10,10,0,1,1-10,10,10,10,0,0,1,10-10Zm-43.8,0a10,10,0,1,1-10,10,10,10,0,0,1,10-10Z'/></svg>") 50% no-repeat;
}
.icon-reader {
  background: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='-5 -5 113 113' ><rect x='-5' y='-5' width='115' height='115' rx='15' fill='rgba(17, 24, 39)'></rect><path fill='white' d='M86.84,12.89H13.16a8.16,8.16,0,0,0-6.59,3.37,7.8,7.8,0,0,0-.58.91,8.11,8.11,0,0,0-1,3.89V78.94a8.19,8.19,0,0,0,8.16,8.17H86.84A8.19,8.19,0,0,0,95,78.94V21.06A8.19,8.19,0,0,0,86.84,12.89ZM89,78.94a2.19,2.19,0,0,1-2.16,2.17H51.18V18.89H86.84A2.19,2.19,0,0,1,89,21.06Z'/><path fill='white'  d='M82.43,58.67H57.79a3.33,3.33,0,1,0,0,6.66H82.43a3.33,3.33,0,0,0,0-6.66Z'/><path fill='white'  d='M82.43,34.67H57.79a3.33,3.33,0,1,0,0,6.66H82.43a3.33,3.33,0,0,0,0-6.66Z'/><path fill='white'  d='M82.43,46.67H57.79a3.33,3.33,0,1,0,0,6.66H82.43a3.33,3.33,0,0,0,0-6.66Z'/></svg>") 50% no-repeat;
}
.posts {
  display: flex;
  flex-wrap: wrap;
  align-items: stretch;
  justify-content: space-around;
  margin-left: auto;
  margin-right: auto;
}
html body .post a {
  text-decoration: none;
}
.post {
  background-color: #fff;
  border: 2px solid transparent;
  cursor: pointer;
  overflow: hidden;
  padding: .5rem;
  transform: translateX(0) translateY(0) rotate(0) skewX(0) skewY(0) scaleX(1) scaleY(1);
}
.post:hover {
  border-color: rgba(209,213,219,.4);
  border-radius: .5rem;
  box-shadow: 0 0 transparent,0 0 transparent,0 1px 3px 0 rgba(0,0,0,.1),0 1px 2px 0 rgba(0,0,0,.06);
  transition-property: all;
  transition-timing-function: cubic-bezier(.4,0,.2,1);
  transition-duration: .3s;
  filter: contrast(1.5) saturate(1.5) drop-shadow(0 1px 2px rgba(0,0,0,.1)) drop-shadow(0 1px 1px rgba(0,0,0,.06));
  transform: scale(1.02);
  z-index: 9;
  position: relative;
}
.post:hover a:before {
  content: " ";
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  box-shadow: inset 0 0 2000px hsla(0,0%,100%,.3);
}
.post img {
  display: inline-block;
  height: 16rem;
  object-fit: cover;
  width: 100%;
}
.post div {
  font-weight: 700;
  padding-top: 1.25rem;
  padding-bottom: 1.25rem;
  color: rgb(var(--red), var(--green), var(--blue));
}
.post div:hover {
  text-decoration: underline;
}
.post h2 {
  font-weight: 700;
  font-size: 1.25rem;
  line-height: 1.75rem;
  padding-bottom: .75rem;
  padding-top: 2rem;
  color: #1f2937;
}
.post article {
  color: #4b5563;
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
}
.text {
  color: #4b5563;
}
header {
  width: 100%;
  background-color: #fff;
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  padding: 1rem .5rem .5rem;
  justify-content: stretch;
}
header:before {
  content: " ";
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100px' height='100px'%3E%3Cpattern id='diagonalHatch' patternUnits='userSpaceOnUse' width='4' height='4'%3E%3Cpath d='M-1,1 l2,-2 M0, 4 l4, -4 M3, 5 l2, -2' style='stroke:rgba(255,255,255,.3); stroke-width:1.5'/%3E%3C/pattern%3E%3Crect x='0' y='0' width='100%25' height='100%25' fill='url(%23diagonalHatch)'/%3E%3C/svg%3E%0A");
  border-bottom-width: 1px;
  border-top-width: 1px;
  background-color: rgb(var(--red), var(--green), var(--blue));
  border-color: rgb(var(--red), var(--green), var(--blue));
  height: .5rem;
  position: absolute;
  top: 0;
  right: 0;
  left: 0;
}
@media (min-width:768px) {
  .btn {
    font-size: 1.125rem;
    line-height: 1.75rem;
    padding: .75rem 1.25rem;
  }
  .post {
    padding: .75rem;
    width: 50%;
  }
  .post article,
  .text {
    font-size: .875rem;
    line-height: 1.25rem;
  }
  header {
    max-width: 768px;
    padding-bottom: 1rem;
    padding-top: 1.5rem;
  }
}
@media (min-width:1024px) {
  .btn {
    padding: 1rem 1.5rem;
  }
  .post {
    padding: 1rem;
    width: 33.333333%;
  }
  .post article,
  .text {
    font-size: 1rem;
    line-height: 1.5rem;
  }
  header {
    max-width: 1024px;
    padding: 2.5rem .25rem 2rem;
  }
  header nav li a:hover {
    text-decoration: underline;
  }
}
header > a > img {
  padding-right: .75rem;
  width: 3rem;
  align-self: center;
}
header > a {
  display: flex;
  align-items: center;
  font-weight: 700;
  font-size: 1.125rem;
  line-height: 1.75rem;
  white-space: nowrap;
  flex: 1;
}
header nav li {
  border-color: #374151;
  cursor: pointer;
  display: block;
  text-align: center;
  width: 100%;
}
header nav li a {
  border-top-width: 1px;
  border-color: #d1d5db;
  display: inline-block;
  padding-top: .5rem;
  padding-bottom: .5rem;
  width: 100%;
}
header nav ul {
  background-color: #fff;
  border-radius: .375rem;
  display: none;
  box-shadow: 0 0 transparent,0 0 transparent,0 10px 15px -3px rgba(0,0,0,.1),0 4px 6px -2px rgba(0,0,0,.05);
  z-index: 20;
  transition-property: all;
  transition-timing-function: cubic-bezier(.4,0,.2,1);
  transition-duration: .15s;
}
.relative,
header nav ul>li {
  position: relative;
}
header nav ul > li ul {
  display: block;
  font-size: .875rem;
  line-height: 1.25rem;
  position: static;
  left: 0;
  top: 3rem;
  z-index: 10;
}
header nav ul > li ul li:first-of-type a {
  border-top-width: 0;
}
header nav ul > li:hover ul {
  visibility: visible;
}
header .hamburger {
  border-color: #6b7280;
  border-radius: .125rem;
  border-width: 1px;
  padding: .5rem 1rem;
}
header nav:hover .hamburger {
  background-color: rgba(var(--red), var(--green), var(--blue), .3);
  border-color: rgba(var(--red), var(--green), var(--blue), .7);
}
.block,
header nav:hover>ul {
  display: block;
}
@media (max-width:1023px) {
  header nav:hover > ul ul {
    background-color: #fff;
    position: static;
  }
  header nav:hover > ul {
    padding-top: .25rem;
    position: absolute;
    right: .75rem;
    left: .75rem;
  }
  header nav:hover > ul li {
    background-color: #fff;
  }
  header nav:hover > ul li > a:hover {
    background-color: rgba(var(--red), var(--green), var(--blue), .3);
    border-color: rgba(var(--red), var(--green), var(--blue), .7);
  }
  header nav:hover > ul > li:hover + li > a {
    border-color: rgba(var(--red), var(--green), var(--blue), .7);
  }
  header nav:hover > ul > li:hover:last-of-type > a {
    border-bottom-width: 1px;
  }
}
.page header ~ main {
  margin-top: 0;
  margin-bottom: 0;
}
.page main {
  width: 100%;
  background-color: #fff;
  border-radius: .5rem;
  margin: 4rem;
  padding: 1.25rem;
  box-shadow: 0 0 transparent,0 0 transparent,0 10px 15px -3px rgba(0,0,0,.1),0 4px 6px -2px rgba(0,0,0,.05);
}
.page main h1 {
  font-size: 1.5rem;
  line-height: 2rem;
  padding-top: .75rem;
  padding-bottom: .75rem;
  text-align: center;
  margin-left: auto;
  margin-right: auto;
  position: relative;
  width: fit-content;
  width: -moz-fit-content;
}
.home h1:after,
.page main h1:after {
  content: "";
  height: 2px;
  width: 50%;
  background-color: rgb(var(--red), var(--green), var(--blue));
  position: absolute;
  bottom: .5rem;
  left: 25%;
}
.page main h2 {
  font-weight: 300;
  font-size: 1.25rem;
  line-height: 1.75rem;
  padding-top: 1.5rem;
  padding-bottom: .5rem;
  color: #4b5563;
}
.home #description h1 strong,
.home section:first-of-type h2 strong,
.page main h2 strong {
  font-weight: 700;
  color: rgb(var(--red), var(--green), var(--blue));
  text-shadow: 0 0 1px rgba(0,0,0,20%),0 0 1px rgba(1,0,5,10%);
}
.page main h3 {
  font-weight: 300;
  font-size: 1.25rem;
  line-height: 1.75rem;
  padding-top: 1rem;
  padding-bottom: .5rem;
}
.page main h4 {
  font-weight: 700;
  font-size: 1.125rem;
  line-height: 1.75rem;
  padding-top: .75rem;
  padding-bottom: .5rem;
}
.page main h5 {
  font-size: 1.125rem;
  line-height: 1.75rem;
  padding-top: .5rem;
  padding-bottom: .25rem;
}
.page main h6 {
  font-weight: 700;
  padding-top: .25rem;
  padding-bottom: .25rem;
}
.page main p {
  padding-top: .75rem;
  padding-bottom: 1.25rem;
}
.page main ol,
.page main ul {
  padding: 1.25rem 1.25rem 1.25rem 2rem;
}
.page main ol {
  list-style: upper-roman;
}
.page main ol ol {
  list-style: lower-roman;
}
.page main ol ol ol {
  list-style: lower-alpha;
}
.page main ul {
  list-style-type: "→ ";
}
.page main ul ul {
  list-style: disc;
}
.page main ul ul ul {
  list-style: circle;
}
.page main blockquote {
  background-color: #f3f4f6;
  border-radius: .25rem;
  padding: .75rem;
  box-shadow: 0 0 transparent,0 0 transparent,inset 0 2px 4px 0 rgba(0,0,0,.06);
}
.page main code {
  background-color: #272822;
  border-radius: .25rem;
  padding: .25rem;
  color: #f3f4f6;
}
.page main pre {
  display: block;
  margin-top: 1.25rem;
  margin-bottom: 1.25rem;
}
.home #intro nav li a:hover,
.page main a,
footer a:hover {
  color: rgb(var(--red), var(--green), var(--blue));
  text-decoration: underline;
}
.page main table {
  border-color: #e5e7eb;
  border-width: 2px;
}
.page main td,
.page main th {
  padding: .5rem .75rem;
}
.page main thead {
  background-color: #e5e7eb;
}
.home #menu h1:after,
.home #products h1:after,
.home #store h1:after,
.home #testimonials h1:after,
.page main tr:nth-child(2) {
  background-color: #f3f4f6;
}
.page main dl {
  border-color: #f3f4f6;
  border-width: 2px;
}
.page main dl dt {
  border-left-width: 8px;
  font-weight: 700;
  padding-left: 1rem;
}
.page main dl dd {
  padding-left: 6rem;
}
@media (min-width:640px) {
  .page main {
    max-width: 640px;
  }
}
@media (min-width:768px) {
  .page main h1 {
    font-size: 1.875rem;
    line-height: 2.25rem;
  }
  .page main {
    max-width: 768px;
  }
}
@media (min-width:1024px) {
  header nav li a {
    border-top-width: 0;
    width: auto;
  }
  header nav ul > li ul {
    background-color: #e5e7eb;
    display: none;
    position: absolute;
    top: 2rem;
  }
  header nav ul > li:hover ul {
    display: block;
    visibility: visible;
  }
  header nav:hover > ul {
    display: inline-block;
  }
  header nav li {
    display: inline-block;
    padding-left: 1rem;
    padding-right: 1rem;
    width: auto;
  }
  header nav ul {
    background-color: transparent;
    display: inline-block;
    box-shadow: 0 0 transparent,0 0 transparent,0 0 transparent;
    width: auto;
  }
  header .hamburger {
    display: none;
  }
  .page main h1 {
    font-size: 2.25rem;
    line-height: 2.5rem;
    padding-top: 2.5rem;
  }
  .page main h2,
  .page main h3 {
    font-size: 1.5rem;
    line-height: 2rem;
  }
  .page main {
    max-width: 1024px;
  }
}
.home section:not(:last-of-type) {
  border-bottom: 1px solid #e5e7eb;
}
.home footer,
.home header,
.home section {
  scroll-snap-align: start;
}
.home header + section {
  scroll-snap-align: none;
}
.home #intro nav {
  position: absolute;
  bottom: 0;
  text-align: center;
  width: 100%;
}
.home #intro nav li {
  display: inline-block;
  font-size: .75rem;
  line-height: 1rem;
}
.home #intro nav li a {
  display: inline-block;
  padding: .75rem;
}
.home #intro {
  padding-bottom: 2.5rem;
  position: relative;
}
.home h1 {
  font-size: 1.5rem;
  line-height: 2rem;
  padding-top: .75rem;
  padding-bottom: .75rem;
  margin-left: auto;
  margin-right: auto;
  position: relative;
  width: fit-content;
  width: -moz-fit-content;
}
.home section:first-of-type:not(:last-of-type):after {
  content: "↓";
  border-radius: 9999px;
  border: 2px dashed rgb(var(--red), var(--green), var(--blue));
  height: 2.5rem;
  font-size: 1.125rem;
  line-height: 2.5rem;
  opacity: .8;
  color: rgb(var(--red), var(--green), var(--blue));
  width: 2.5rem;
  margin: 50px auto 20px;
}
.home section:first-of-type:not(:last-of-type) {
  min-height: 100vh;
}
.home header + section:first-of-type:not(:last-of-type) {
  min-height: calc(100vh - 40px - 1.5rem);
}
.home section:first-of-type {
  display: flex;
  flex-direction: column;
  align-content: center;
  justify-content: center;
  flex-grow: 1;
  text-align: center;
}
.home section:first-of-type img {
  background-color: #fff;
  margin-left: auto;
  margin-right: auto;
  width: 3rem;
}
.home section:first-of-type h1 {
  background-color: #fff;
  font-size: 1.875rem;
  line-height: 2.25rem;
  padding-top: 1.25rem;
  padding-bottom: 1.25rem;
}
.hidden,
.home #testimonials li .twitter-tweet *,
.home section:first-of-type h1:after {
  display: none;
}
.home section:first-of-type h2 {
  background-color: #fff;
  font-weight: 300;
  color: #4b5563;
}
.home section:first-of-type > a {
  border-radius: .75rem;
  border: 2px solid rgb(var(--red), var(--green), var(--blue));
  display: inline-block;
  font-weight: 400;
  font-size: 1rem;
  line-height: 1.5rem;
  margin-left: auto;
  margin-right: auto;
  padding: .5rem 1rem;
  text-decoration: none;
  transition-property: background-color,border-color,color,fill,stroke,opacity,box-shadow,transform,filter,backdrop-filter;
  transition-timing-function: cubic-bezier(.4,0,.2,1);
  transition-duration: .15s;
  background-color: rgb(var(--red), var(--green), var(--blue));
  margin-top: 2.5rem;
  color: #fff;
}
.home section:first-of-type > a:hover {
  background-color: rgb(var(--red), var(--green), var(--blue));
  color: #fff;
  text-decoration: none;
  filter: brightness(.75) contrast(1.25);
}
@media (min-width:640px) {
  .home section:first-of-type img {
    width: 3.5rem;
  }
  .home section:first-of-type h1 {
    font-size: 3rem;
    line-height: 1;
  }
}
.home #description {
  background-color: #fff;
  min-height: 100vh;
  padding-left: 1.75rem;
  padding-right: 1.75rem;
  padding-bottom: 2.5rem;
}
.home #description p {
  padding-top: .5rem;
  padding-bottom: .5rem;
  color: #000;
}
.home #description a {
  background-color: #fff;
  border-radius: .75rem;
  border: 2px solid rgb(var(--red), var(--green), var(--blue));
  display: inline-block;
  font-weight: 400;
  font-size: 1rem;
  line-height: 1.5rem;
  margin-left: auto;
  margin-right: auto;
  padding: .5rem 1rem;
  color: rgb(var(--red), var(--green), var(--blue));
  text-decoration: none;
  transition-property: background-color,border-color,color,fill,stroke,opacity,box-shadow,transform,filter,backdrop-filter;
  transition-timing-function: cubic-bezier(.4,0,.2,1);
  transition-duration: .15s;
  margin-bottom: 2.5rem;
}
.home #description h1 {
  margin-top: 2.5rem;
  text-align: center;
}
.home #description h2 {
  font-weight: 700;
  font-size: 1.125rem;
  line-height: 1.75rem;
  padding-top: .75rem;
  padding-bottom: .75rem;
  margin-top: 5rem;
}
.home #description hr {
  clear: both;
  scroll-snap-align: start;
}
.home #description img {
  border-radius: .125rem;
  float: left;
  margin-top: 1.25rem;
  margin-bottom: 2.5rem;
  box-shadow: 0 0 transparent,0 0 transparent,0 4px 6px -1px rgba(0,0,0,.1),0 2px 4px -1px rgba(0,0,0,.06);
  width: 100%;
}
.float-right,
.home #description hr:nth-of-type(odd)~p img {
  float: right;
}
.home #menu {
  background-color: rgba(var(--red), var(--green), var(--blue), .7);
  margin: 0;
  max-width: none;
  padding: 1.75rem 1.25rem;
  color: #fff;
  width: 100vw;
  display: flex;
  flex-direction: column;
  align-items: center;
}
.home #menu h1 {
  text-align: center;
  text-shadow: 0 1px 2px rgba(30,29,39,19%),1px 2px 4px rgba(54,64,147,18%);
}
.home #menu h2 {
  font-weight: 300;
  opacity: .9;
  color: #f3f4f6;
  text-shadow: 1px 1px 3px rgba(36,37,47,25%);
}
.home #menu ul {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: space-evenly;
  width: 100%;
}
.home #menu li {
  border-color: #c7d2fe;
  display: flex;
  flex-direction: column;
  justify-content: space-around;
  font-size: 1.25rem;
  line-height: 1.75rem;
  padding: 1.25rem;
  text-align: center;
  transform: translateX(0) translateY(0) rotate(0) skewX(0) skewY(0) scaleX(1) scaleY(1);
}
.home #menu li a {
  display: block;
  padding-bottom: .25rem;
  padding-top: .5rem;
  text-shadow: 0 1px 2px rgba(30,29,39,19%),1px 2px 4px rgba(54,64,147,18%);
}
.home #menu li p {
  opacity: .9;
  color: #f3f4f6;
  text-shadow: 1px 1px 3px rgba(36,37,47,25%);
}
.home #menu i {
  background-color: #f3f4f6;
  border-radius: 9999px;
  display: block;
  height: 4rem;
  margin: 1rem auto;
  width: 4rem;
  filter: drop-shadow(0 4px 3px rgba(0,0,0,.07)) drop-shadow(0 2px 2px rgba(0,0,0,.06));
  background-size: 30px;
}
.home #blog {
  padding-top: 1.75rem;
  padding-bottom: 1.75rem;
}
.home #blog .posts {
  margin-top: 6rem;
  margin-bottom: 6rem;
  padding-left: 1.25rem;
  padding-right: 1.25rem;
}
.home #blog h1 {
  background-color: #fff;
  text-align: center;
}
.home #testimonials {
  display: flex;
  flex-direction: column;
  align-items: stretch;
  padding-top: 1.75rem;
  padding-bottom: 1.75rem;
  background-color: rgba(var(--red), var(--green), var(--blue), .7);
  margin: 0;
  max-width: none;
  color: #fff;
  width: 100vw;
}
.home #testimonials h1 {
  flex-grow: 0;
  text-align: center;
  text-shadow: 0 1px 2px rgba(30,29,39,19%),1px 2px 4px rgba(54,64,147,18%);
}
.home #testimonials > div {
  display: flex;
  align-items: center;
  flex-grow: 1;
  margin-left: auto;
  margin-right: auto;
  overflow: scroll;
  scroll-snap-type: x mandatory;
  width: 100vw;
}
.home #testimonials ol {
  display: flex;
  padding: .75rem;
  width: fit-content;
}
.home #store ul li:hover .price,
.home #store ul li:hover h2,
.home #testimonials ol:hover li {
  color: #000;
}
.home #testimonials li {
  scroll-snap-align: center;
  background-color: #fff;
  border-radius: .125rem;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  font-size: 1.125rem;
  line-height: 1.75rem;
  padding: 1.5rem .75rem;
  box-shadow: 0 0 transparent,0 0 transparent,0 4px 6px -1px rgba(0,0,0,.1),0 2px 4px -1px rgba(0,0,0,.06);
  text-align: center;
  color: #1f2937;
  width: calc(100vw - 4rem);
  margin: .5rem;
}
.home #testimonials li:hover {
  box-shadow: 0 0 transparent,0 0 transparent,0 20px 25px -5px rgba(0,0,0,.1),0 10px 10px -5px rgba(0,0,0,.04);
}
.home #testimonials li > div {
  margin-top: 2rem;
}
.home #testimonials li h2 {
  display: block;
  font-weight: 700;
  font-size: 1rem;
  line-height: 1.5rem;
  text-align: left;
}
.home #testimonials li h2:before {
  content: "-";
  display: inline-block;
  text-align: left;
  width: .75rem;
}
.home #testimonials li h3 {
  font-size: 1rem;
  line-height: 1.5rem;
  padding-left: .75rem;
  padding-right: .75rem;
  text-align: left;
}
.home #testimonials li .twitter-tweet {
  font-size: 0;
  visibility: hidden;
}
.home #testimonials li .twitter-tweet p {
  display: inline-block;
  font-size: 1.125rem;
  line-height: 1.75rem;
  visibility: visible;
}
.home #testimonials li .twitter-tweet p:before,
.home #testimonials li > p:first-of-type:not(:empty):before {
  content: " ";
  background-position-y: top;
  float: left;
  height: 100%;
  opacity: .5;
  width: 1.5rem;
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 24 24"><path fill="rgb({{$r}},{{$g}},{{$b}})" d="M4.583 17.321C3.553 16.227 3 15 3 13.011c0-3.5 2.457-6.637 6.03-8.188l.893 1.378c-3.335 1.804-3.987 4.145-4.247 5.621.537-.278 1.24-.375 1.929-.311 1.804.167 3.226 1.648 3.226 3.489a3.5 3.5 0 01-3.5 3.5c-1.073 0-2.099-.49-2.748-1.179zm10 0C13.553 16.227 13 15 13 13.011c0-3.5 2.457-6.637 6.03-8.188l.893 1.378c-3.335 1.804-3.987 4.145-4.247 5.621.537-.278 1.24-.375 1.929-.311 1.804.167 3.226 1.648 3.226 3.489a3.5 3.5 0 01-3.5 3.5c-1.073 0-2.099-.49-2.748-1.179z"></path></svg>') top no-repeat;
  margin-top: -10px;
  margin-bottom: 10px;
  min-height: 30px;
}
@media (min-width:640px) {
  .home #testimonials li .twitter-tweet p {
    font-size: 1.25rem;
    line-height: 1.75rem;
  }
  .home #testimonials > div {
    max-width: 640px;
    width: 612px;
  }
}
.home #testimonials li:first-child {
  margin-left: 1rem;
}
@media (min-width:768px) {
  .home header + section:first-of-type:not(:last-of-type) {
    min-height: calc(100vh - 40px - 2.5rem);
  }
  .home section:first-of-type img {
    width: 4rem;
  }
  .home section:first-of-type h1 {
    font-size: 3.75rem;
    line-height: 1;
  }
  .home section:first-of-type > a {
    font-size: 1.125rem;
    line-height: 1.75rem;
    padding: .75rem 1.25rem;
    margin-top: 5rem;
  }
  .home #description p {
    font-size: .875rem;
    line-height: 1.25rem;
    margin-left: 1rem;
    margin-right: 1rem;
    padding-top: .75rem;
    padding-bottom: .75rem;
  }
  .home #description a {
    font-size: 1.125rem;
    line-height: 1.75rem;
    padding: .75rem 1.25rem;
  }
  .home #description hr~h2,
  .home #description hr~p {
    margin-left: 2rem;
    margin-right: 2rem;
  }
  .home #description img {
    border-radius: .375rem;
    margin: 2.5rem 1rem;
    max-width: 24rem;
  }
  .home #description h2 {
    margin-left: 1rem;
    margin-right: 1rem;
    margin-top: .75rem;
  }
  .home #menu li p {
    font-size: .875rem;
    line-height: 1.25rem;
  }
  .home #testimonials li .twitter-tweet p {
    font-size: 1.5rem;
    line-height: 2rem;
  }
  .home #testimonials > div {
    max-width: 768px;
    width: 740px;
  }
}
@media (min-width:1024px) {
  .home #intro nav li {
    font-size: .875rem;
    line-height: 1.25rem;
  }
  .home header + section:first-of-type:not(:last-of-type) {
    min-height: calc(100vh - 46px - 4.5rem);
  }
  .home section:first-of-type h1 {
    font-size: 4.5rem;
    line-height: 1;
  }
  .home section:first-of-type h2 {
    font-size: 1.5rem;
    line-height: 2rem;
  }
  .home #description a,
  .home section:first-of-type>a {
    padding: 1rem 1.5rem;
  }
  .home #description p {
    font-size: 1rem;
    line-height: 1.5rem;
    padding-top: 1.5rem;
    padding-bottom: 1.5rem;
  }
  .home #description h1 {
    margin-top: 5rem;
  }
  .home #description h2 {
    font-size: 1.5rem;
    line-height: 2rem;
    padding-top: 2.5rem;
  }
  .home #description img {
    margin-top: 5rem;
    margin-bottom: 5rem;
    max-width: 36rem;
  }
  .home #menu h2 {
    font-size: 1.125rem;
    line-height: 1.75rem;
  }
  .home #menu li p {
    font-size: 1rem;
    line-height: 1.5rem;
  }
  .home #testimonials > div {
    max-width: 1024px;
    width: 968px;
  }
}
@media (min-width:640px) {
  .home #testimonials ol {
    padding: 1.25rem;
  }
  .home #testimonials li {
    border-radius: .375rem;
    font-size: 1.25rem;
    line-height: 1.75rem;
    padding-left: 1.25rem;
    padding-right: 1.25rem;
    margin: .75rem;
    width: 530px;
  }
}
.home #products,
.home #store {
  background-color: rgba(var(--red), var(--green), var(--blue), .7);
  margin: 0;
  max-width: none;
  padding: 1.75rem 1.25rem;
  color: #fff;
  width: 100vw;
}
.home #products h1,
.home #store h1 {
  opacity: .9;
  text-align: center;
  color: #f3f4f6;
  text-shadow: 1px 1px 3px rgba(36,37,47,25%);
}
.home #products>a,
.home #store>a {
  background-color: #fff;
  border-radius: .75rem;
  border: 2px solid rgb(var(--red), var(--green), var(--blue));
  font-weight: 400;
  font-size: 1rem;
  line-height: 1.5rem;
  padding: .5rem 1rem;
  color: rgb(var(--red), var(--green), var(--blue));
  text-decoration: none;
  transition-property: background-color,border-color,color,fill,stroke,opacity,box-shadow,transform,filter,backdrop-filter;
  transition-timing-function: cubic-bezier(.4,0,.2,1);
  transition-duration: .15s;
  display: block;
  margin-left: auto;
  margin-right: auto;
  margin-bottom: 2rem;
  width: max-content;
}
.home #products>a:before,
.home #store>a:before {
  content: "↓ ";
}
.home #products table {
  background-color: #fff;
  border-radius: .375rem;
  margin: 1.5rem auto;
  overflow: hidden;
  box-shadow: 0 0 transparent,0 0 transparent,0 10px 15px -3px rgba(0,0,0,.1),0 4px 6px -2px rgba(0,0,0,.05);
  color: #000;
}
.home #products table thead {
  border-bottom: 4px solid #fff;
  background-color: rgba(var(--red), var(--green), var(--blue), .1);
  border-color: rgba(var(--red), var(--green), var(--blue), .3);
  font-weight: 700;
}
.home #products table thead td {
  padding: 1.25rem;
}
.home #products table thead td:nth-of-type(3):before {
  content: "";
}
.home #products table td:first-child {
  font-weight: 700;
}
.home #products table td {
  padding: 1rem;
}
.home #products table td:nth-of-type(3):before {
  content: "$ ";
}
.home #products table tr:nth-child(2n) {
  background-color: rgba(var(--red), var(--green), var(--blue), .1);
}
.home #products table tr:hover {
  background-color: rgba(var(--red), var(--green), var(--blue), .3);
}
.home #store ul {
  display: grid;
  align-items: stretch;
  justify-content: space-around;
  margin: 4rem auto;
  padding-left: 1.25rem;
  padding-right: 1.25rem;
  gap: 1rem;
  grid-template-columns: repeat(1,minmax(0,1fr));
}
.home #store ul h2 {
  font-weight: 700;
  font-size: 1.5rem;
  line-height: 2rem;
  padding: 2rem 1rem .75rem;
  color: #1f2937;
}
.home #store ul li {
  background-color: #f3f4f6;
  border-radius: .375rem;
  display: inline-block;
  display: flex;
  flex-direction: column;
  place-content: stretch;
  overflow: hidden;
  position: relative;
  box-shadow: 0 0 transparent,0 0 transparent,0 4px 6px -1px rgba(0,0,0,.1),0 2px 4px -1px rgba(0,0,0,.06);
  width: 100%;
}
.home #store ul li:hover {
  background-color: #fff;
  box-shadow: 0 0 transparent,0 0 transparent,0 10px 15px -3px rgba(0,0,0,.1),0 4px 6px -2px rgba(0,0,0,.05);
  transform: scale(1.02);
}
.home #store ul li:hover img {
  filter: saturate(2);
}
.home #store ul li > a {
  background-color: transparent;
  border-radius: 0;
  cursor: pointer;
  display: inline-block;
  overflow: hidden;
  box-shadow: 0 0 transparent,0 0 transparent,0 0 transparent;
  width: 100%;
  transform: translateX(0) translateY(0) rotate(0) skewX(0) skewY(0) scaleX(1) scaleY(1);
  transition-property: all;
  transition-timing-function: cubic-bezier(.4,0,.2,1);
  transition-duration: .3s;
}
.home #store ul li > a img {
  background-color: #f3f4f6;
  height: 12rem;
  object-fit: cover;
  width: 100%;
  box-shadow: inset 0 0 240px rgba(var(--red), var(--green), var(--blue), .6);
  object-position: bottom center;
}
.home #store ul li > a .price {
  font-weight: 700;
  font-size: 1.875rem;
  line-height: 2.25rem;
  padding-left: 1rem;
  padding-right: 1rem;
  padding-bottom: 2rem;
  color: #1f2937;
}
.home #store ul li > a .price:first-letter {
  display: inline-block;
  font-weight: 600;
  padding-right: .25rem;
  color: #374151;
}
.home #store ul li > a .rating {
  background-color: rgba(var(--red), var(--green), var(--blue), .7);
  border-radius: 9999px;
  font-weight: 700;
  height: 2rem;
  font-size: .875rem;
  margin-top: 2rem;
  position: absolute;
  right: 2rem;
  top: 12rem;
  box-shadow: 0 0 transparent,0 0 transparent,inset 0 2px 4px 0 rgba(0,0,0,.06);
  text-align: center;
  color: #fff;
  width: 5rem;
  text-shadow: 0 0 1px rgba(0,0,0,20%),0 0 1px rgba(1,0,5,10%);
  line-height: 2rem!important;
}
@media (min-width:640px) {
  .home #intro nav {
    max-width: 640px;
  }
}
@media (min-width:768px) {
  .home #testimonials ol {
    padding: 1.75rem;
  }
  .home #testimonials li {
    border-radius: .5rem;
    font-size: 1.5rem;
    line-height: 2rem;
    padding: 2.5rem 1.75rem;
    margin: 1rem;
    width: 622px;
  }
  .home #products>a,
  .home #store>a {
    font-size: 1.125rem;
    line-height: 1.75rem;
    padding: .75rem 1.25rem;
  }
  .home #store ul {
    grid-template-columns: repeat(2,minmax(0,1fr));
  }
  .home #intro nav {
    max-width: 768px;
  }
  .home h1 {
    font-size: 1.875rem;
    line-height: 2.25rem;
  }
}
@media (min-width:1024px) {
  .home #testimonials ol {
    padding: 2.5rem;
  }
  .home #testimonials li {
    padding: 5rem 2.5rem;
    margin: 1.25rem;
    width: 850px;
  }
  .home #products>a,
  .home #store>a {
    padding: 1rem 1.5rem;
  }
  .home #store ul li > a img {
    height: 16rem;
  }
  .home #store ul li > a .rating {
    font-size: 1rem;
    line-height: 1.5rem;
    top: 16rem;
    width: 6rem;
  }
  .home #store ul li {
    width: 100%;
  }
  .home #store ul {
    grid-template-columns: repeat(3,minmax(0,1fr));
  }
  .home #intro nav {
    max-width: 1024px;
  }
  .home #intro {
    padding-bottom: 3rem;
  }
}
@media (min-width:1280px) {
  .home #intro nav,
  .home #testimonials>div,
  .page main,
  body>*,
  header {
    max-width: 1280px;
  }
}
@media (min-width:1536px) {
  .home #intro nav,
  .home #testimonials>div,
  .page main,
  body>*,
  header {
    max-width: 1536px;
  }
}
.contact-box {
  display: grid;
  grid-template-columns: repeat(1,minmax(0,1fr));
}
.contact-box p {
  color: #1f2937;
}
.contact-box form div,
footer nav {
  margin: 1rem;
}
body.page form button {
  border-radius: .75rem;
  border: 2px solid rgb(var(--red), var(--green), var(--blue));
  display: inline-block;
  font-weight: 400;
  font-size: 1rem;
  line-height: 1.5rem;
  margin-left: auto;
  margin-right: auto;
  padding: .25rem .5rem;
  text-decoration: none;
  transition-property: background-color,border-color,color,fill,stroke,opacity,box-shadow,transform,filter,backdrop-filter;
  transition-timing-function: cubic-bezier(.4,0,.2,1);
  transition-duration: .15s;
  background-color: rgb(var(--red), var(--green), var(--blue));
  color: #fff;
}
body.page form label {
  display: inline-block;
  color: #374151;
  width: 5rem;
}
body.page form input,
body.page form select,
body.page form textarea {
  background-color: #f3f4f6;
  border-color: transparent;
  border-radius: .375rem;
  display: block;
  margin-top: .25rem;
  width: 100%;
}
body.page form input:focus,
body.page form select:focus,
body.page form textarea:focus {
  background-color: #fff;
  border-color: #6b7280;
  box-shadow: 0 0 0 0 #fff,0 0 0 calc(0px) rgba(59,130,246,.5),0 0 transparent;
}
@media (min-width:768px) {
  .home #description {
    padding-left: 0;
    padding-right: 0;
  }
  body.page form button {
    font-size: 1.125rem;
    line-height: 1.75rem;
    padding: .5rem 1rem;
  }
}
.page.survey form li {
  margin: 1rem;
  clear: both;
}
.page.survey form label {
  width: auto;
}
.page.survey form input,
.page.survey form select {
  float: right;
  width: 12rem;
}
.page.survey form button {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
footer {
  text-align: center;
  vertical-align: bottom;
}
footer a {
  display: inline-block;
  flex-grow: 0;
  font-weight: 700;
  font-size: .75rem;
  line-height: 1rem;
  padding: .75rem;
  color: #374151;
  transition-property: background-color,border-color,color,fill,stroke,opacity,box-shadow,transform,filter,backdrop-filter;
  transition-timing-function: cubic-bezier(.4,0,.2,1);
  transition-duration: .15s;
}
footer a:focus {
  color: rgb(var(--red), var(--green), var(--blue));
}
footer img {
  margin: .75rem auto;
}
footer ul {
  align-items: center;
}
footer li {
  display: inline-block;
}
footer > div {
  font-size: .875rem;
  line-height: 1.25rem;
  margin: 1.75rem;
}
footer i {
  display: block;
  height: 2rem;
  width: 2rem;
  transform: translateX(0) translateY(0) rotate(0) skewX(0) skewY(0) scaleX(1) scaleY(1);
  transition-property: all;
  transition-timing-function: cubic-bezier(.4,0,.2,1);
  transition-duration: .15s;
}
footer i:hover {
  opacity: .9;
}
footer.dark {
  background-color: #111827;
  margin: 0;
  max-width: none;
  padding: 1.25rem;
  color: #d1d5db;
  width: 100vw;
}
footer.dark a {
  color: #e5e7eb;
}
footer.dark a:focus {
  color: #f3f4f6;
}
@media (min-width:640px) {
  footer a {
    padding: .5rem;
  }
}
@media (min-width:1024px) {
  .home h1 {
    font-size: 2.25rem;
    line-height: 2.5rem;
    padding-top: 2.5rem;
  }
  .contact-box {
    grid-template-columns: repeat(2,minmax(0,1fr));
  }
  body.page form button {
    padding: .75rem 1.25rem;
  }
  footer a {
    font-size: .875rem;
    line-height: 1.25rem;
  }
}
.border {
  border-width: 1px;
}
.inline {
  display: inline;
}
.table {
  display: table;
}
.contents {
  display: contents;
}
.float-left {
  float: left;
}
.transform {
  transform: translateX(0) translateY(0) rotate(0) skewX(0) skewY(0) scaleX(1) scaleY(1);
}
