import { Controller } from "@hotwired/stimulus";
import { resetEnv } from "@rails/webpacker/package/utils/helpers";


export default class extends Controller {

connect() {
    const instaDiv = document.querySelector('.embedsocial-hashtag');
    const iFrame = document.querySelector('iframe');
    const iFrameElement = '<iframe src="https://embedsocial.com/api/pro_hashtag/bf5d503558dcf96f36d4569411bfbfc32581e1dc/" id="embedIFrame_bf5d503558dcf96f36d4569411bfbfc32581e1dc9s1w8" class="embedsocial-hashtag-iframe" scrolling="yes" style="width: 100%; height: 2200px; border: 0px; overflow: hidden;"></iframe>';

    const lastScript = '<script id="EmbedSocialIFrame" src="https://embedsocial.com/js/iframe.js"></script>';
    const body = document.querySelector('body');

    if (iFrame == null) {
        instaDiv.insertAdjacentHTML("beforeend", iFrameElement);
        body.insertAdjacentHTML("beforeend", lastScript);
    };
}

};
