// GETBEST IPTV 8K - Core Interactive Features
document.addEventListener('DOMContentLoaded', () => {
  // Scroll progress indicator
  const scrollProgressFill = document.querySelector('.scroll-progress-fill');
  if (scrollProgressFill) {
    const updateScrollProgress = () => {
      const scrollTop = window.scrollY || document.documentElement.scrollTop;
      const totalScroll = document.documentElement.scrollHeight - window.innerHeight;
      const progress = totalScroll > 0 ? (scrollTop / totalScroll) * 100 : 0;
      scrollProgressFill.style.width = `${Math.min(Math.max(progress, 0), 100)}%`;
    };

    updateScrollProgress();
    window.addEventListener('scroll', updateScrollProgress, { passive: true });
  }

  // Mobile Navigation Toggle
  const navToggle = document.getElementById('nav-toggle');
  const mainNav = document.getElementById('main-nav');

  if (navToggle && mainNav) {
    const closeMenu = () => {
      navToggle.setAttribute('aria-expanded', 'false');
      navToggle.setAttribute('aria-label', 'Open navigation menu');
      mainNav.classList.remove('open');
    };

    navToggle.addEventListener('click', () => {
      const expanded = navToggle.getAttribute('aria-expanded') === 'true';
      if (expanded) {
        closeMenu();
        return;
      }

      navToggle.setAttribute('aria-expanded', 'true');
      navToggle.setAttribute('aria-label', 'Close navigation menu');
      mainNav.classList.add('open');
    });

    // Close menu when clicking outside or clicking a navigation link
    document.addEventListener('click', (e) => {
      if (!navToggle.contains(e.target) && !mainNav.contains(e.target) && mainNav.classList.contains('open')) {
        closeMenu();
      }
    });

    mainNav.querySelectorAll('a').forEach((link) => {
      link.addEventListener('click', closeMenu);
    });

    window.addEventListener('scroll', () => {
      if (mainNav.classList.contains('open')) closeMenu();
    }, { passive: true });

    if (navToggle.getAttribute('aria-expanded') !== 'true') {
      navToggle.setAttribute('aria-label', 'Open navigation menu');
    }
  }

  // Back to Top Button
  const backToTop = document.querySelector('.back-to-top');
  if (backToTop) {
    window.addEventListener('scroll', () => {
      if (window.pageYOffset > 380) {
        backToTop.classList.add('visible');
      } else {
        backToTop.classList.remove('visible');
      }
    }, { passive: true });

    backToTop.addEventListener('click', () => {
      window.scrollTo({ top: 0, behavior: 'smooth' });
    });
  }

  // Smooth Scroll Reveal via IntersectionObserver
  const revealElements = document.querySelectorAll('.reveal');
  if (revealElements.length && 'IntersectionObserver' in window) {
    const revealObserver = new IntersectionObserver((entries, observer) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          entry.target.classList.add('visible');
          observer.unobserve(entry.target);
        }
      });
    }, { threshold: 0.08, rootMargin: '0px 0px -30px 0px' });

    revealElements.forEach((el, index) => {
      el.style.transitionDelay = `${(index % 3) * 70}ms`;
      revealObserver.observe(el);
    });
  } else {
    revealElements.forEach((el) => el.classList.add('visible'));
  }

  // FAQ Accordions
  const faqTriggers = document.querySelectorAll('.faq-trigger');
  faqTriggers.forEach((trigger) => {
    trigger.addEventListener('click', () => {
      const expanded = trigger.getAttribute('aria-expanded') === 'true';
      const content = trigger.nextElementSibling;

      faqTriggers.forEach((item) => {
        item.setAttribute('aria-expanded', 'false');
        if (item.nextElementSibling) {
          item.nextElementSibling.style.maxHeight = null;
        }
      });

      if (!expanded && content) {
        trigger.setAttribute('aria-expanded', 'true');
        content.style.maxHeight = `${content.scrollHeight}px`;
      }
    });
  });

  // Testimonial Slider Controls
  const sliderTrack = document.getElementById('testimonial-slider');
  const sliderPrev = document.querySelector('.slider-button--prev');
  const sliderNext = document.querySelector('.slider-button--next');

  sliderPrev?.addEventListener('click', () => {
    sliderTrack?.scrollBy({ left: -360, behavior: 'smooth' });
  });

  sliderNext?.addEventListener('click', () => {
    sliderTrack?.scrollBy({ left: 360, behavior: 'smooth' });
  });

  // Catalog Category Filter
  const filterChips = document.querySelectorAll('.filter-chips .chip');
  const catalogCards = document.querySelectorAll('#catalog-grid .catalog-card');

  if (filterChips.length && catalogCards.length) {
    filterChips.forEach((chip) => {
      chip.addEventListener('click', () => {
        filterChips.forEach((c) => c.classList.remove('active'));
        chip.classList.add('active');
        const filter = chip.getAttribute('data-filter') || 'all';

        catalogCards.forEach((card) => {
          const category = card.getAttribute('data-category');
          if (filter === 'all' || category === filter) {
            card.style.display = 'grid';
            setTimeout(() => {
              card.style.opacity = '1';
              card.style.transform = 'translateY(0)';
            }, 10);
          } else {
            card.style.opacity = '0';
            card.style.transform = 'translateY(12px)';
            setTimeout(() => {
              card.style.display = 'none';
            }, 200);
          }
        });
      });
    });
  }
  // Toast Notification Helper
  const showToast = (message, type = 'success') => {
    let toast = document.getElementById('site-toast');
    if (!toast) {
      toast = document.createElement('div');
      toast.id = 'site-toast';
      toast.className = 'site-toast';
      document.body.appendChild(toast);
    }
    const icon = type === 'success' ? 'fa-solid fa-circle-check' : 'fa-solid fa-circle-exclamation';
    toast.innerHTML = `<i class="${icon}"></i> <span>${message}</span>`;
    toast.className = `site-toast site-toast--${type} show`;

    clearTimeout(toast._timeout);
    toast._timeout = setTimeout(() => {
      toast.classList.remove('show');
    }, 4500);
  };

  // Newsletter Form Submission
  const newsletterForm = document.getElementById('newsletter-form');
  newsletterForm?.addEventListener('submit', (event) => {
    event.preventDefault();
    const input = newsletterForm.querySelector('input[type="email"]');
    if (!input || !input.value || !input.checkValidity()) {
      input?.reportValidity();
      return;
    }
    input.value = '';
    showToast('Thank you! You are now subscribed to the GETBEST IPTV 8K newsletter.', 'success');
  });

  // Support Form Submission with In-Page Banner
  const supportForm = document.getElementById('support-form');
  const supportFormStatus = document.getElementById('support-form-status');

  supportForm?.addEventListener('submit', (event) => {
    event.preventDefault();
    const requiredFields = supportForm.querySelectorAll('[required]');
    let valid = true;
    requiredFields.forEach((field) => {
      if (!field.value.trim()) {
        field.reportValidity();
        valid = false;
      }
    });

    if (!valid) return;

    const nameInput = supportForm.querySelector('#name');
    const name = nameInput?.value.trim() || 'Valued Subscriber';
    supportForm.reset();

    if (supportFormStatus) {
      supportFormStatus.innerHTML = `
        <div class="alert-box alert-box--success">
          <i class="fa-solid fa-circle-check alert-box__icon"></i>
          <div class="alert-box__content">
            <strong>Request Submitted Successfully!</strong>
            <p>Thank you, ${name}. Our technical team has received your ticket and will respond via email within 15 minutes.</p>
          </div>
        </div>
      `;
      supportFormStatus.scrollIntoView({ behavior: 'smooth', block: 'center' });
    }

    showToast('Support request submitted successfully!', 'success');
  });

  // Animated Counters
  const counters = document.querySelectorAll('.counter');
  const formatNumber = (value) => {
    const decimals = value % 1 === 0 ? 0 : 1;
    return value.toLocaleString('en-US', {
      minimumFractionDigits: decimals,
      maximumFractionDigits: decimals,
    });
  };

  const animateCounters = () => {
    counters.forEach((counter) => {
      if (counter.dataset.animating === 'true') return;
      counter.dataset.animating = 'true';

      const target = parseFloat(counter.dataset.target);
      const suffix = counter.dataset.suffix || '';
      const duration = 1600;
      const startTime = performance.now();

      const updateValue = (currentTime) => {
        const elapsed = currentTime - startTime;
        const progress = Math.min(elapsed / duration, 1);
        const easeOutQuad = 1 - (1 - progress) * (1 - progress);
        const current = target * easeOutQuad;
        counter.textContent = `${formatNumber(current)}${suffix}`;

        if (progress < 1) {
          requestAnimationFrame(updateValue);
        } else {
          counter.textContent = `${formatNumber(target)}${suffix}`;
          counter.dataset.animating = 'false';
        }
      };

      requestAnimationFrame(updateValue);
    });
  };

  if (counters.length && 'IntersectionObserver' in window) {
    const counterObserver = new IntersectionObserver((entries, observer) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          animateCounters();
          observer.disconnect();
        }
      });
    }, { threshold: 0.4 });

    counters.forEach((c) => counterObserver.observe(c));
  } else if (counters.length) {
    animateCounters();
  }

  // Subscription Duration Switcher (3 Months, 6 Months, 12 Months)
  const pricingToggleButtons = document.querySelectorAll('.pricing-toggle-btn');
  const pricingTiers = {
    '3m': {
      period: '/ 3 months',
      plans: {
        starter: { price: '24.99', subtext: '$8.33 / month • Billed every 3 months', link: 'support?plan=starter&duration=3m' },
        premium: { price: '44.99', subtext: '$14.99 / month • Billed every 3 months', link: 'support?plan=premium&duration=3m' },
        elite: { price: '64.99', subtext: '$21.66 / month • Billed every 3 months', link: 'support?plan=elite&duration=3m' }
      }
    },
    '6m': {
      period: '/ 6 months',
      plans: {
        starter: { price: '44.99', subtext: '$7.50 / month • Save 15% (Billed $44.99)', link: 'support?plan=starter&duration=6m' },
        premium: { price: '79.99', subtext: '$13.33 / month • Save 15% (Billed $79.99)', link: 'support?plan=premium&duration=6m' },
        elite: { price: '119.99', subtext: '$19.99 / month • Save 15% (Billed $119.99)', link: 'support?plan=elite&duration=6m' }
      }
    },
    '12m': {
      period: '/ 12 months',
      plans: {
        starter: { price: '69.99', subtext: '$5.83 / month • Save 40% (Billed $69.99/yr)', link: 'support?plan=starter&duration=12m' },
        premium: { price: '129.99', subtext: '$10.83 / month • Save 40% (Billed $129.99/yr)', link: 'support?plan=premium&duration=12m' },
        elite: { price: '199.99', subtext: '$16.66 / month • Save 35% (Billed $199.99/yr)', link: 'support?plan=elite&duration=12m' }
      }
    }
  };

  if (pricingToggleButtons.length) {
    pricingToggleButtons.forEach((btn) => {
      btn.addEventListener('click', () => {
        pricingToggleButtons.forEach((b) => {
          b.classList.remove('active');
          b.setAttribute('aria-selected', 'false');
        });
        btn.classList.add('active');
        btn.setAttribute('aria-selected', 'true');

        const duration = btn.getAttribute('data-duration') || '3m';
        const tierData = pricingTiers[duration];

        if (!tierData) return;

        ['starter', 'premium', 'elite'].forEach((planKey) => {
          const card = document.querySelector(`.plan-card[data-plan="${planKey}"]`);
          if (!card) return;

          const priceVal = card.querySelector('.plan-price-num');
          const pricePeriod = card.querySelector('.plan-period');
          const priceSubtext = card.querySelector('.plan-price-subtext');
          const actionBtn = card.querySelector('.plan-action a');

          const planInfo = tierData.plans[planKey];
          if (!planInfo) return;

          // Smooth fade transition
          card.classList.add('price-updating');
          setTimeout(() => {
            if (priceVal) priceVal.textContent = planInfo.price;
            if (pricePeriod) pricePeriod.textContent = tierData.period;
            if (priceSubtext) priceSubtext.textContent = planInfo.subtext;
            if (actionBtn) actionBtn.setAttribute('href', planInfo.link);
            card.classList.remove('price-updating');
          }, 150);
        });
      });
    });
  }
});
// Football page interactions
document.addEventListener('DOMContentLoaded', () => {
  const footballFaqTriggers = document.querySelectorAll('.faq-trigger-sports');
  footballFaqTriggers.forEach((trigger) => {
    trigger.addEventListener('click', () => {
      const item = trigger.closest('.faq-item-sports');
      const expanded = trigger.getAttribute('aria-expanded') === 'true';
      trigger.setAttribute('aria-expanded', String(!expanded));
      item?.classList.toggle('open', !expanded);
    });
  });

  const countdown = document.getElementById('wc2030Countdown');
  if (!countdown) return;

  const target = new Date('2030-06-08T18:00:00Z').getTime();
  const days = document.getElementById('wcDays');
  const hours = document.getElementById('wcHours');
  const minutes = document.getElementById('wcMinutes');
  const seconds = document.getElementById('wcSeconds');

  const updateCountdown = () => {
    const remaining = Math.max(0, target - Date.now());
    const dayValue = Math.floor(remaining / 86400000);
    const hourValue = Math.floor((remaining % 86400000) / 3600000);
    const minuteValue = Math.floor((remaining % 3600000) / 60000);
    const secondValue = Math.floor((remaining % 60000) / 1000);
    days && (days.textContent = dayValue.toLocaleString());
    hours && (hours.textContent = String(hourValue).padStart(2, '0'));
    minutes && (minutes.textContent = String(minuteValue).padStart(2, '0'));
    seconds && (seconds.textContent = String(secondValue).padStart(2, '0'));
    if (remaining > 0) window.setTimeout(updateCountdown, 1000);
  };

  updateCountdown();
});
/* ==========================================================================\n+   POSTER SHOWCASE MARQUEE (standalone IIFE - prefix: ps)\n+   Continuous infinite loop with hover and visibility pause\n+   ========================================================================== */
(function () {
  'use strict';
  var sections = document.querySelectorAll('.poster-slider-section');
  if (!sections.length) return;

  sections.forEach(function (section) {
    var track = section.querySelector('.ps-track');
    if (!track || track.dataset.psReady === 'true') return;

    var originals = Array.prototype.slice.call(track.children);
    if (!originals.length) return;

    var group = document.createElement('div');
    group.className = 'ps-group';
    originals.forEach(function (card) { group.appendChild(card); });
    track.appendChild(group);

    var clone = group.cloneNode(true);
    clone.setAttribute('aria-hidden', 'true');
    track.appendChild(clone);
    track.dataset.psReady = 'true';

    document.addEventListener('visibilitychange', function () {
      track.style.animationPlayState = document.hidden ? 'paused' : '';
    });
  });
})();

/* ========================================================================
   WHATSAPP REVIEW MARQUEE (standalone IIFE - prefix: wa-reviews)
  Continuous infinite loop with individually duplicated review items.
   ======================================================================== */
(function () {
  'use strict';
  var track = document.getElementById('waReviewsTrack');
  if (!track || !track.children.length) return;

  var slides = Array.prototype.slice.call(track.children);
  // Clone only the review items, preserving the same item sequence and spacing.
  slides.forEach(function (slide) {
    var clone = slide.cloneNode(true);
    clone.setAttribute('aria-hidden', 'true');
    track.appendChild(clone);
  });

  document.addEventListener('visibilitychange', function () {
    track.style.animationPlayState = document.hidden ? 'paused' : '';
  });
})();
