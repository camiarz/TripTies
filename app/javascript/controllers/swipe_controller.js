import { Controller } from "@hotwired/stimulus";
import Hammer from 'hammerjs';
import Swal from "sweetalert2";

// Connects to data-controller="swipe"
export default class extends Controller {

  static targets = ['nope', 'love', 'container', 'card']
  connect() {
    console.log('swipe connected');

    var tinderContainer = this.containerTarget;
    var allCards = this.cardTargets;
    var nope = this.nopeTarget;
    var love = this.loveTarget;

    const initCards = (card, index) => {
      const newCards = document.querySelectorAll('.tinder--card:not(.removed)');

      newCards.forEach({} = (card, index) => {
        card.style.zIndex = allCards.length - index;
        card.style.transform = 'scale(' + (20 - index) / 20 + ') translateY(-' + 30 * index + 'px)';
        card.style.opacity = (10 - index) / 10;
      });

      tinderContainer.classList.add('loaded');
    }

    initCards();

    allCards.forEach(function (el) {
      var hammertime = new Hammer(el);

      hammertime.on('pan', function (event) {
        el.classList.add('moving');
      });

      hammertime.on('pan', function (event) {
        if (event.deltaX === 0) return;
        if (event.center.x === 0 && event.center.y === 0) return;

        tinderContainer.classList.toggle('tinder_love', event.deltaX > 0);
        tinderContainer.classList.toggle('tinder_nope', event.deltaX < 0);

        var xMulti = event.deltaX * 0.03;
        var yMulti = event.deltaY / 80;
        var rotate = xMulti * yMulti;

        event.target.style.transform = 'translate(' + event.deltaX + 'px, ' + event.deltaY + 'px) rotate(' + rotate + 'deg)';
      });

      hammertime.on('panend', function (event) {
        el.classList.remove('moving');
        tinderContainer.classList.remove('tinder_love');
        tinderContainer.classList.remove('tinder_nope');
                
        var moveOutWidth = document.body.clientWidth;
        var keep = Math.abs(event.deltaX) < 80 || Math.abs(event.velocityX) < 0.5;

        event.target.classList.toggle('removed', !keep);

        if (keep) {
          event.target.style.transform = '';
        } else {
          var endX = Math.max(Math.abs(event.velocityX) * moveOutWidth, moveOutWidth);
          var toX = event.deltaX > 0 ? endX : -endX;
          var endY = Math.abs(event.velocityY) * moveOutWidth;
          var toY = event.deltaY > 0 ? endY : -endY;
          var xMulti = event.deltaX * 0.03;
          var yMulti = event.deltaY / 80;
          var rotate = xMulti * yMulti;
          if ( event.deltaX > 200) {
            // accept
            console.log('right');
            Swal.fire({
              title: "YOU SWIPED RIGHT",
              width: 600,
              padding: "3em",
              color: "#716add",
              backdrop: `rgba(0,0,123,0.4) left top no-repeat`
            });
            // add code to submit match here
          } else if ( event.deltaX < -200) {
            // reject
            console.log('left');
          }

          event.target.style.transform = 'translate(' + toX + 'px, ' + (toY + event.deltaY) + 'px) rotate(' + rotate + 'deg)';
          initCards();
        }
      });
    });

    function createButtonListener(love) {
      return function (event) {
        var cards = document.querySelectorAll('.tinder--card:not(.removed)');
        var moveOutWidth = document.body.clientWidth * 1.5;

        if (!cards.length) return false;

        var card = cards[0];

        card.classList.add('removed');

        if (love) {
          card.style.transform = 'translate(' + moveOutWidth + 'px, -100px) rotate(-30deg)';
        } else {
          card.style.transform = 'translate(-' + moveOutWidth + 'px, -100px) rotate(30deg)';
        }

        initCards();

        event.preventDefault();
      };
    }

    var nopeListener = createButtonListener(false);
    var loveListener = createButtonListener(true);

    nope.addEventListener('click', nopeListener);
    love.addEventListener('click', loveListener);
  }
}
