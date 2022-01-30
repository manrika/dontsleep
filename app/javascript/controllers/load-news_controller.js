import { Controller } from "@hotwired/stimulus";
import { resetEnv } from "@rails/webpacker/package/utils/helpers";


export default class extends Controller {

connect() {
    const instaDiv = document.querySelector('.embedsocial-hashtag');
    const iFrame = document.querySelector('iframe');
    const iFrameElement = '<iframe src="https://embedsocial.com/api/pro_hashtag/bf5d503558dcf96f36d4569411bfbfc32581e1dc/" id="embedIFrame_bf5d503558dcf96f36d4569411bfbfc32581e1dc9s1w8" class="embedsocial-hashtag-iframe" scrolling="yes" style="width: 100%; height: 1800px; border: 0px; overflow: hidden;"></iframe>';

    const lastScript = '<script id="EmbedSocialIFrame" src="https://embedsocial.com/js/iframe.js"></script>';
    const body = document.querySelector('body');

    if (iFrame == null) {
        console.log("no iframe here");
        instaDiv.insertAdjacentHTML("beforeend", iFrameElement); 
        body.insertAdjacentHTML("beforeend", lastScript); 
    };

    // console.log("loads news controller connected"); 
    // $(document).on('turbolinks:load', function(d, s, id) {
    //     var js; if (d.getElementById(id)) {return;} js = d.createElement(s); js.id = id; js.src = "https://embedsocial.com/cdn/ht.js"; d.getElementsByTagName("head")[0].appendChild(js);
    // })

    // const newsPage = this.element;
    // this.element.insertAdjacentHTML("beforeend", '<div class="embedsocial-hashtag" data-ref="bf5d503558dcf96f36d4569411bfbfc32581e1dc"></div>');
    // newsJS();
    
    // $(document).on("turbolinks:before-render", newsJS());
    
    // const embedSocialiFrame = document.getElementById('EmbedSocialIFrame');
    // if (embedSocialiFrame == null) {
        //     console.log("embedSocialiFrame not ere");
        //     newsJS();
        // } else {
            //     console.log("is ere");
            // }
        }

// const newsJS = () => {
//     return (function(d, s, id){var js; if (d.getElementById(id)) {return;} js = d.createElement(s); js.id = id; js.src = "https://embedsocial.com/cdn/ht.js"; d.getElementsByTagName("head")[0].appendChild(js);}(document, "script", "EmbedSocialHashtagScript")); 
// };

// $(document).on("turbolinks:load", (function(d, s, id){var js; if (d.getElementById(id)) {return;} js = d.createElement(s); js.id = id; js.src = "https://embedsocial.com/cdn/ht.js"; d.getElementsByTagName("head")[0].appendChild(js);}(document, "script", "EmbedSocialHashtagScript")));


//   disconnect() {
//       console.log("disconnected");
//   }
}

