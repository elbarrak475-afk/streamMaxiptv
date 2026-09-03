# PowerShell script to update sports.html, catalog.html, support.html
Write-Output "Updating subpages..."

$sportsHtml = @'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="StreamMax Sports IPTV brings dedicated live sports and football coverage in 4K & 60FPS with global leagues, schedules, and premium channel lineups." />
  <meta name="keywords" content="IPTV sports, football IPTV, live sports channels, 4K sports, match schedule, Premier League IPTV, Champions League IPTV" />
  <title>StreamMax IPTV | Live Sports & Football 4K Coverage</title>
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&family=Poppins:wght@500;600;700;800&family=Montserrat:wght@600;700;800&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
  <link rel="stylesheet" href="assets/style.css" />
</head>
<body>
  <div class="page-shell">
    <!-- Top Announcement Bar -->
    <div class="top-announcement">
      <div class="container announcement-inner">
        <span class="announcement-badge"><i class="fa-solid fa-bolt"></i> LIMITED OFFER</span>
        <p class="announcement-text">Experience Elite 4K Streaming — <strong>Claim Your 24-Hour Free Trial</strong> with Instant Setup!</p>
        <a href="support.html#trial" class="announcement-link">Get Free Trial <i class="fa-solid fa-arrow-right"></i></a>
      </div>
    </div>

    <!-- Site Header -->
    <header class="site-header">
      <div class="container header-inner">
        <a href="index.html" class="brand" aria-label="StreamMax IPTV Home">
          <span class="brand-icon-wrapper"><i class="fa-solid fa-play logo-icon" aria-hidden="true"></i></span>
          StreamMax<span>IPTV</span>
        </a>
        <nav class="site-nav" id="main-nav" aria-label="Primary navigation">
          <ul class="nav-list">
            <li><a href="index.html#home">Home</a></li>
            <li><a href="index.html#features">Why Us</a></li>
            <li><a href="index.html#plans">Pricing</a></li>
            <li><a href="index.html#reseller">Resellers</a></li>
            <li><a href="sports.html" class="active">Live Sports</a></li>
            <li><a href="catalog.html">Channels & VOD</a></li>
            <li><a href="support.html">Support</a></li>
          </ul>
        </nav>
        <div class="header-actions">
          <a href="support.html#trial" class="button button-header-trial"><i class="fa-solid fa-bolt"></i> Free Trial</a>
          <button class="nav-toggle" aria-controls="main-nav" aria-expanded="false" id="nav-toggle" aria-label="Toggle navigation menu">
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
          </button>
        </div>
      </div>
    </header>

    <main>
      <section class="page-hero page-hero--sports">
        <div class="page-hero-background" aria-hidden="true"></div>
        <div class="page-hero-overlay"></div>
        <div class="container hero-content hero-content--small">
          <div class="hero-badge-pill">
            <span class="pulse-dot"></span>
            <span>60FPS & NATIVE 4K LIVE COVERAGE</span>
          </div>
          <h1>Dedicated Live Sports & Football IPTV Hub</h1>
          <p class="hero-text">Never miss a match again. Stream Premier League, UEFA Champions League, La Liga, Serie A, NBA, Formula 1, UFC, and PPV fight nights with zero buffering.</p>
          <div class="hero-actions">
            <a href="support.html#trial" class="button button-primary"><i class="fa-solid fa-bolt"></i> Start 24h Free Sports Trial</a>
            <a href="index.html#plans" class="button button-secondary"><i class="fa-solid fa-tags"></i> View Pricing Plans</a>
          </div>
        </div>
      </section>

      <!-- Match Schedule -->
      <section class="section reveal" aria-label="Upcoming live sports fixtures">
        <div class="container section-heading">
          <span class="eyebrow"><i class="fa-solid fa-calendar-days"></i> Match Schedule</span>
          <h2>Upcoming Featured Live Events</h2>
          <p>Follow the biggest international derbies, championship tournaments, and Grand Prix events streamed live in 60FPS.</p>
        </div>
        <div class="container schedule-grid">
          <article class="schedule-card">
            <div>
              <span class="schedule-league">UEFA Champions League</span>
              <h3>Real Madrid vs Manchester City</h3>
            </div>
            <p><i class="fa-regular fa-clock"></i> Saturday · 20:00 GMT • 4K UHD Feed</p>
          </article>
          <article class="schedule-card">
            <div>
              <span class="schedule-league">English Premier League</span>
              <h3>Arsenal vs Chelsea</h3>
            </div>
            <p><i class="fa-regular fa-clock"></i> Sunday · 16:30 GMT • 60FPS FHD</p>
          </article>
          <article class="schedule-card">
            <div>
              <span class="schedule-league">NBA Playoffs</span>
              <h3>Lakers vs Celtics</h3>
            </div>
            <p><i class="fa-regular fa-clock"></i> Tuesday · 01:30 GMT • Ultra 4K</p>
          </article>
          <article class="schedule-card">
            <div>
              <span class="schedule-league">Formula 1 Grand Prix</span>
              <h3>Monaco Grand Prix Main Race</h3>
            </div>
            <p><i class="fa-regular fa-clock"></i> Sunday · 14:00 GMT • Multi-Cam 60FPS</p>
          </article>
        </div>
      </section>

      <!-- Sports Channel Highlights -->
      <section class="section section--alt reveal" aria-label="Sports channel packages">
        <div class="container section-heading">
          <span class="eyebrow"><i class="fa-solid fa-tv"></i> Dedicated Channels</span>
          <h2>World-Class Sports Lineup</h2>
          <p>Access premium dedicated sports channels optimized with low-latency CDN feeds for live action.</p>
        </div>
        <div class="container feature-grid">
          <article class="feature-card">
            <div class="feature-icon-box"><i class="fa-solid fa-futbol" aria-hidden="true"></i></div>
            <div class="feature-card-content">
              <div class="feature-header"><h3>Football 24/7 Hub</h3><span class="feature-tag">All Leagues</span></div>
              <p>Non-stop match broadcasts, studio analysis, and pre-match tactical previews covering European, South American, and Asian football.</p>
            </div>
          </article>
          <article class="feature-card">
            <div class="feature-icon-box"><i class="fa-solid fa-basketball" aria-hidden="true"></i></div>
            <div class="feature-card-content">
              <div class="feature-header"><h3>Basketball Zone</h3><span class="feature-tag">NBA & EuroLeague</span></div>
              <p>Full-season coverage of NBA League Pass feeds, EuroLeague championships, and NCAA college basketball in crisp 60FPS.</p>
            </div>
          </article>
          <article class="feature-card">
            <div class="feature-icon-box"><i class="fa-solid fa-flag-checkered" aria-hidden="true"></i></div>
            <div class="feature-card-content">
              <div class="feature-header"><h3>Motorsport Paddock</h3><span class="feature-tag">F1 & MotoGP</span></div>
              <p>Complete weekend passes for Formula 1, MotoGP, NASCAR, and endurance racing with pit-lane audio and onboard camera feeds.</p>
            </div>
          </article>
          <article class="feature-card">
            <div class="feature-icon-box"><i class="fa-solid fa-hand-fist" aria-hidden="true"></i></div>
            <div class="feature-card-content">
              <div class="feature-header"><h3>Combat Sports & PPV</h3><span class="feature-tag">UFC & Boxing</span></div>
              <p>Live UFC numbered fight nights, Bellator, ONE Championship, and major world title boxing pay-per-view events included.</p>
            </div>
          </article>
        </div>
      </section>

      <!-- Leagues Covered -->
      <section class="section reveal" aria-label="Supported global leagues">
        <div class="container section-heading">
          <span class="eyebrow"><i class="fa-solid fa-trophy"></i> Global Competitions</span>
          <h2>All Your Favorite Leagues in One Place</h2>
        </div>
        <div class="container league-grid">
          <div class="league-card"><img src="https://images.unsplash.com/photo-1522778119026-d647f0596c20?w=600&auto=format&fit=crop&q=80" alt="Premier League" /><span>Premier League</span></div>
          <div class="league-card"><img src="https://images.unsplash.com/photo-1574629810360-7efbbe195018?w=600&auto=format&fit=crop&q=80" alt="UEFA Champions League" /><span>UEFA Champions League</span></div>
          <div class="league-card"><img src="https://images.unsplash.com/photo-1508098682722-e99c43a406b2?w=600&auto=format&fit=crop&q=80" alt="La Liga Santander" /><span>La Liga Santander</span></div>
          <div class="league-card"><img src="https://images.unsplash.com/photo-1546519638-68e109498ffc?w=600&auto=format&fit=crop&q=80" alt="NBA Basketball" /><span>NBA Championship</span></div>
          <div class="league-card"><img src="https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?w=600&auto=format&fit=crop&q=80" alt="Formula 1 World Championship" /><span>Formula 1 Racing</span></div>
          <div class="league-card"><img src="https://images.unsplash.com/photo-1517649763962-0c623266ddc0?w=600&auto=format&fit=crop&q=80" alt="UFC & Combat Sports" /><span>UFC & PPV Boxing</span></div>
        </div>
      </section>

      <!-- Support CTA Card -->
      <section class="section reveal contact-highlight">
        <div class="container contact-card">
          <div>
            <span class="eyebrow"><i class="fa-solid fa-headset"></i> Sports Assistance</span>
            <h2>Need Help Setting Up Your Favorite Fixture?</h2>
            <p>Our dedicated sports engineering team is available 24/7 on WhatsApp to configure your preferred team playlist and test stream stability.</p>
          </div>
          <a href="support.html#trial" class="button button-primary"><i class="fa-brands fa-whatsapp"></i> Chat With Sports Desk</a>
        </div>
      </section>
    </main>

    <!-- FOOTER -->
    <footer class="site-footer">
      <div class="container footer-grid">
        <div class="footer-col-main">
          <a href="index.html" class="brand footer-brand"><span class="brand-icon-wrapper"><i class="fa-solid fa-play logo-icon" aria-hidden="true"></i></span>StreamMax<span>IPTV</span></a>
          <p class="footer-desc">The world's leading premium IPTV provider delivering 15,000+ live channels, PPV events, and 60,000+ 4K VOD titles with anti-freeze server infrastructure and 24/7 dedicated support.</p>
          <div class="footer-status-pill"><span class="status-indicator"></span><span>All Global Server Clusters Operational (99.9%)</span></div>
        </div>
        <div>
          <h3>Quick Links</h3>
          <ul>
            <li><a href="index.html#home">Home</a></li>
            <li><a href="index.html#plans">Pricing Plans</a></li>
            <li><a href="index.html#reseller">Reseller Panels</a></li>
            <li><a href="sports.html">Live Sports Schedule</a></li>
            <li><a href="catalog.html">Channel Catalog</a></li>
            <li><a href="support.html">Contact & Setup</a></li>
          </ul>
        </div>
        <div>
          <h3>Contact & Help</h3>
          <ul>
            <li><a href="mailto:support@streammaxiptv.com"><i class="fa-solid fa-envelope"></i> support@streammaxiptv.com</a></li>
            <li><a href="https://wa.me/1234567890" target="_blank" rel="noreferrer"><i class="fa-brands fa-whatsapp"></i> WhatsApp Live Chat</a></li>
            <li><a href="https://t.me/streammaxsupport" target="_blank" rel="noreferrer"><i class="fa-brands fa-telegram"></i> Telegram Support</a></li>
            <li><a href="support.html#contact-form"><i class="fa-solid fa-ticket"></i> Open Support Ticket</a></li>
            <li><a href="index.html#faq"><i class="fa-solid fa-circle-question"></i> Help FAQ</a></li>
          </ul>
        </div>
        <div>
          <h3>Connect & Pay</h3>
          <p class="footer-subtext">Follow our community for fixture alerts and server updates.</p>
          <div class="footer-icon-row" aria-label="Social media links">
            <a href="https://wa.me/1234567890" target="_blank" rel="noreferrer" class="footer-icon-placeholder" aria-label="WhatsApp" title="WhatsApp"><i class="fa-brands fa-whatsapp"></i></a>
            <a href="https://t.me/streammaxsupport" target="_blank" rel="noreferrer" class="footer-icon-placeholder" aria-label="Telegram" title="Telegram"><i class="fa-brands fa-telegram"></i></a>
            <a href="https://x.com" target="_blank" rel="noreferrer" class="footer-icon-placeholder" aria-label="X (Twitter)" title="X / Twitter"><i class="fa-brands fa-x-twitter"></i></a>
            <a href="https://instagram.com" target="_blank" rel="noreferrer" class="footer-icon-placeholder" aria-label="Instagram" title="Instagram"><i class="fa-brands fa-instagram"></i></a>
          </div>
          <div class="footer-payment-wrapper">
            <span class="payment-title">Guaranteed Safe Checkout:</span>
            <div class="footer-payment-placeholders" aria-label="Supported payment methods">
              <span class="payment-placeholder" title="Visa Card"><i class="fa-brands fa-cc-visa"></i></span>
              <span class="payment-placeholder" title="Mastercard"><i class="fa-brands fa-cc-mastercard"></i></span>
              <span class="payment-placeholder" title="Apple Pay"><i class="fa-brands fa-cc-apple-pay"></i></span>
              <span class="payment-placeholder" title="PayPal"><i class="fa-brands fa-paypal"></i></span>
              <span class="payment-placeholder" title="Bitcoin / Crypto"><i class="fa-brands fa-bitcoin"></i></span>
              <span class="payment-placeholder" title="USDT Tether"><i class="fa-solid fa-coins"></i></span>
            </div>
          </div>
        </div>
      </div>
      <div class="container footer-bottom">
        <div class="footer-bottom-inner">
          <p>&copy; 2026 StreamMax IPTV. All rights reserved.</p>
          <div class="footer-bottom-links"><a href="support.html">Terms of Service</a><span>•</span><a href="support.html">Privacy Policy</a><span>•</span><a href="support.html">Refund Guarantee</a></div>
        </div>
      </div>
    </footer>
    <button class="back-to-top" aria-label="Back to top" title="Scroll to top"><i class="fa-solid fa-arrow-up" aria-hidden="true"></i></button>
    <a class="sticky-cta" href="https://wa.me/1234567890" target="_blank" rel="noreferrer" aria-label="Chat with Support on WhatsApp"><i class="fa-brands fa-whatsapp" aria-hidden="true"></i><span>Live Support (Online)</span></a>
  </div>
  <script src="assets/script.js"></script>
</body>
</html>
'@
[System.IO.File]::WriteAllText("$PWD\sports.html", $sportsHtml, [System.Text.Encoding]::UTF8)
Write-Output "sports.html updated."

$catalogHtml = @'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="Explore StreamMax IPTV's complete channel catalog and VOD library with 15,000+ live feeds, 60,000+ 4K movies and series across 50+ countries." />
  <meta name="keywords" content="IPTV catalog, IPTV channel list, 4K VOD, movie channels, series lineup, international channels IPTV" />
  <title>StreamMax IPTV | 15,000+ Live Channels & 60,000+ VOD Catalog</title>
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&family=Poppins:wght@500;600;700;800&family=Montserrat:wght@600;700;800&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
  <link rel="stylesheet" href="assets/style.css" />
</head>
<body>
  <div class="page-shell">
    <!-- Top Announcement Bar -->
    <div class="top-announcement">
      <div class="container announcement-inner">
        <span class="announcement-badge"><i class="fa-solid fa-bolt"></i> LIMITED OFFER</span>
        <p class="announcement-text">Experience Elite 4K Streaming — <strong>Claim Your 24-Hour Free Trial</strong> with Instant Setup!</p>
        <a href="support.html#trial" class="announcement-link">Get Free Trial <i class="fa-solid fa-arrow-right"></i></a>
      </div>
    </div>

    <!-- Site Header -->
    <header class="site-header">
      <div class="container header-inner">
        <a href="index.html" class="brand" aria-label="StreamMax IPTV Home">
          <span class="brand-icon-wrapper"><i class="fa-solid fa-play logo-icon" aria-hidden="true"></i></span>
          StreamMax<span>IPTV</span>
        </a>
        <nav class="site-nav" id="main-nav" aria-label="Primary navigation">
          <ul class="nav-list">
            <li><a href="index.html#home">Home</a></li>
            <li><a href="index.html#features">Why Us</a></li>
            <li><a href="index.html#plans">Pricing</a></li>
            <li><a href="index.html#reseller">Resellers</a></li>
            <li><a href="sports.html">Live Sports</a></li>
            <li><a href="catalog.html" class="active">Channels & VOD</a></li>
            <li><a href="support.html">Support</a></li>
          </ul>
        </nav>
        <div class="header-actions">
          <a href="support.html#trial" class="button button-header-trial"><i class="fa-solid fa-bolt"></i> Free Trial</a>
          <button class="nav-toggle" aria-controls="main-nav" aria-expanded="false" id="nav-toggle" aria-label="Toggle navigation menu">
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
          </button>
        </div>
      </div>
    </header>

    <main>
      <section class="page-hero page-hero--catalog">
        <div class="page-hero-background" aria-hidden="true"></div>
        <div class="page-hero-overlay"></div>
        <div class="container hero-content hero-content--small">
          <div class="hero-badge-pill">
            <span class="pulse-dot"></span>
            <span>15,000+ LIVE CHANNELS & 60,000+ VOD TITLES</span>
          </div>
          <h1>Explore the StreamMax Global Entertainment Library</h1>
          <p class="hero-text">Discover curated international channel bouquets, cinema premieres in 4K, premium documentaries, kids animation, and worldwide news networks.</p>
          <div class="hero-actions">
            <a href="support.html#trial" class="button button-primary"><i class="fa-solid fa-bolt"></i> Request Channel Lineup Test</a>
            <a href="index.html#plans" class="button button-secondary"><i class="fa-solid fa-tags"></i> View All Plans</a>
          </div>
        </div>
      </section>

      <!-- Category Filter & Grid -->
      <section class="section reveal" aria-label="Channel categories filter">
        <div class="container section-heading">
          <span class="eyebrow"><i class="fa-solid fa-layer-group"></i> Curated Bouquets</span>
          <h2>Premium Channel Collections</h2>
          <p>Filter through our most popular lineups with high-bitrate feeds for cinema, series, global news, and children's entertainment.</p>
        </div>
        <div class="container filter-chips">
          <button class="chip active" type="button" data-filter="all">All Channels</button>
          <button class="chip" type="button" data-filter="movies">Movies & Series</button>
          <button class="chip" type="button" data-filter="sports">Sports & PPV</button>
          <button class="chip" type="button" data-filter="news">24/7 Global News</button>
          <button class="chip" type="button" data-filter="kids">Kids & Family</button>
        </div>
        <div class="container catalog-grid" id="catalog-grid">
          <article class="catalog-card reveal" data-category="movies">
            <img src="https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?w=600&auto=format&fit=crop&q=80" alt="Cinema and VOD" />
            <div>
              <h3>Ultra 4K Cinema & Blockbusters</h3>
              <p>Theatrical releases, award-winning dramas, and on-demand premieres in crisp 4K UHD with multi-language subtitle tracks.</p>
            </div>
          </article>
          <article class="catalog-card reveal" data-category="news">
            <img src="https://images.unsplash.com/photo-1585829365295-ab7cd400c167?w=600&auto=format&fit=crop&q=80" alt="Global News" />
            <div>
              <h3>24/7 International News Hub</h3>
              <p>Direct broadcast feeds from BBC, CNN, Sky News, Fox, Al Jazeera, France24, and Bloomberg with zero lag.</p>
            </div>
          </article>
          <article class="catalog-card reveal" data-category="kids">
            <img src="https://images.unsplash.com/photo-1534447677768-be436bb09401?w=600&auto=format&fit=crop&q=80" alt="Family and Kids" />
            <div>
              <h3>Family, Kids & Cartoons</h3>
              <p>Disney, Cartoon Network, Nickelodeon, and educational documentary channels safe for family viewing with parental controls.</p>
            </div>
          </article>
          <article class="catalog-card reveal" data-category="sports">
            <img src="https://images.unsplash.com/photo-1508098682722-e99c43a406b2?w=600&auto=format&fit=crop&q=80" alt="Live Sports Network" />
            <div>
              <h3>Global Sports & Football Hub</h3>
              <p>Complete pass for Sky Sports, TNT Sports, beIN Sports, DAZN, ESPN, Canal+, and Movistar in 60FPS.</p>
            </div>
          </article>
          <article class="catalog-card reveal" data-category="movies">
            <img src="https://images.unsplash.com/photo-1578836537282-3171d77f8632?w=600&auto=format&fit=crop&q=80" alt="Documentaries & Nature" />
            <div>
              <h3>Documentaries & Science</h3>
              <p>National Geographic, Discovery Channel, History Channel, and BBC Earth in crystal-clear high definition.</p>
            </div>
          </article>
          <article class="catalog-card reveal" data-category="sports">
            <img src="https://images.unsplash.com/photo-1517649763962-0c623266ddc0?w=600&auto=format&fit=crop&q=80" alt="PPV and Fight Action" />
            <div>
              <h3>PPV Events & Fight Channels</h3>
              <p>Live UFC numbered events, WWE pay-per-views, DAZN Boxing, and international kickboxing championship feeds.</p>
            </div>
          </article>
        </div>
      </section>

      <!-- VOD Showcase Section -->
      <section class="section section--alt reveal" aria-label="Video on demand showcase">
        <div class="container section-heading">
          <span class="eyebrow"><i class="fa-solid fa-film"></i> 60,000+ VOD Titles</span>
          <h2>On-Demand Entertainment Updated Daily</h2>
          <p>Stream massive multi-season TV series and top box office cinema releases whenever you want with instant search.</p>
        </div>
        <div class="container vod-grid">
          <article class="vod-card">
            <img src="https://images.unsplash.com/photo-1536440136628-849c177e76a1?w=600&auto=format&fit=crop&q=80" alt="Top Action Movies" />
            <div>
              <h3>Top Action & Sci-Fi Thrillers</h3>
              <p>High-octane blockbusters with Dolby Digital 5.1 surround sound and pristine visual fidelity.</p>
            </div>
          </article>
          <article class="vod-card">
            <img src="https://images.unsplash.com/photo-1518173946687-a4c8a383392e?w=600&auto=format&fit=crop&q=80" alt="Latest TV Series" />
            <div>
              <h3>Complete TV Series & Binge Packs</h3>
              <p>Full-season collections from HBO, Netflix, Apple TV, and Amazon Prime with multi-language audio.</p>
            </div>
          </article>
          <article class="vod-card">
            <img src="https://images.unsplash.com/photo-1518709268805-4e9042af9f23?w=600&auto=format&fit=crop&q=80" alt="Nature and Culture Documentaries" />
            <div>
              <h3>Award-Winning Documentaries</h3>
              <p>Nature specials, investigative series, and true crime features updated on release day.</p>
            </div>
          </article>
        </div>
      </section>

      <!-- Custom Playlist Support Card -->
      <section class="section reveal contact-highlight">
        <div class="container contact-card">
          <div>
            <span class="eyebrow"><i class="fa-solid fa-sliders"></i> Custom Lineup</span>
            <h2>Need a Specific Country Bouquet or Playlist?</h2>
            <p>Our team can customize your M3U and Xtream playlist, hide unwanted categories, or add specialist regional feeds at zero extra cost.</p>
          </div>
          <a href="support.html#contact-form" class="button button-primary"><i class="fa-solid fa-wand-magic-sparkles"></i> Customize My Playlist</a>
        </div>
      </section>
    </main>

    <!-- FOOTER -->
    <footer class="site-footer">
      <div class="container footer-grid">
        <div class="footer-col-main">
          <a href="index.html" class="brand footer-brand"><span class="brand-icon-wrapper"><i class="fa-solid fa-play logo-icon" aria-hidden="true"></i></span>StreamMax<span>IPTV</span></a>
          <p class="footer-desc">The world's leading premium IPTV provider delivering 15,000+ live channels, PPV events, and 60,000+ 4K VOD titles with anti-freeze server infrastructure and 24/7 dedicated support.</p>
          <div class="footer-status-pill"><span class="status-indicator"></span><span>All Global Server Clusters Operational (99.9%)</span></div>
        </div>
        <div>
          <h3>Quick Links</h3>
          <ul>
            <li><a href="index.html#home">Home</a></li>
            <li><a href="index.html#plans">Pricing Plans</a></li>
            <li><a href="index.html#reseller">Reseller Panels</a></li>
            <li><a href="sports.html">Live Sports Schedule</a></li>
            <li><a href="catalog.html">Channel Catalog</a></li>
            <li><a href="support.html">Contact & Setup</a></li>
          </ul>
        </div>
        <div>
          <h3>Contact & Help</h3>
          <ul>
            <li><a href="mailto:support@streammaxiptv.com"><i class="fa-solid fa-envelope"></i> support@streammaxiptv.com</a></li>
            <li><a href="https://wa.me/1234567890" target="_blank" rel="noreferrer"><i class="fa-brands fa-whatsapp"></i> WhatsApp Live Chat</a></li>
            <li><a href="https://t.me/streammaxsupport" target="_blank" rel="noreferrer"><i class="fa-brands fa-telegram"></i> Telegram Support</a></li>
            <li><a href="support.html#contact-form"><i class="fa-solid fa-ticket"></i> Open Support Ticket</a></li>
            <li><a href="index.html#faq"><i class="fa-solid fa-circle-question"></i> Help FAQ</a></li>
          </ul>
        </div>
        <div>
          <h3>Connect & Pay</h3>
          <p class="footer-subtext">Follow our community for fixture alerts and server updates.</p>
          <div class="footer-icon-row" aria-label="Social media links">
            <a href="https://wa.me/1234567890" target="_blank" rel="noreferrer" class="footer-icon-placeholder" aria-label="WhatsApp" title="WhatsApp"><i class="fa-brands fa-whatsapp"></i></a>
            <a href="https://t.me/streammaxsupport" target="_blank" rel="noreferrer" class="footer-icon-placeholder" aria-label="Telegram" title="Telegram"><i class="fa-brands fa-telegram"></i></a>
            <a href="https://x.com" target="_blank" rel="noreferrer" class="footer-icon-placeholder" aria-label="X (Twitter)" title="X / Twitter"><i class="fa-brands fa-x-twitter"></i></a>
            <a href="https://instagram.com" target="_blank" rel="noreferrer" class="footer-icon-placeholder" aria-label="Instagram" title="Instagram"><i class="fa-brands fa-instagram"></i></a>
          </div>
          <div class="footer-payment-wrapper">
            <span class="payment-title">Guaranteed Safe Checkout:</span>
            <div class="footer-payment-placeholders" aria-label="Supported payment methods">
              <span class="payment-placeholder" title="Visa Card"><i class="fa-brands fa-cc-visa"></i></span>
              <span class="payment-placeholder" title="Mastercard"><i class="fa-brands fa-cc-mastercard"></i></span>
              <span class="payment-placeholder" title="Apple Pay"><i class="fa-brands fa-cc-apple-pay"></i></span>
              <span class="payment-placeholder" title="PayPal"><i class="fa-brands fa-paypal"></i></span>
              <span class="payment-placeholder" title="Bitcoin / Crypto"><i class="fa-brands fa-bitcoin"></i></span>
              <span class="payment-placeholder" title="USDT Tether"><i class="fa-solid fa-coins"></i></span>
            </div>
          </div>
        </div>
      </div>
      <div class="container footer-bottom">
        <div class="footer-bottom-inner">
          <p>&copy; 2026 StreamMax IPTV. All rights reserved.</p>
          <div class="footer-bottom-links"><a href="support.html">Terms of Service</a><span>•</span><a href="support.html">Privacy Policy</a><span>•</span><a href="support.html">Refund Guarantee</a></div>
        </div>
      </div>
    </footer>
    <button class="back-to-top" aria-label="Back to top" title="Scroll to top"><i class="fa-solid fa-arrow-up" aria-hidden="true"></i></button>
    <a class="sticky-cta" href="https://wa.me/1234567890" target="_blank" rel="noreferrer" aria-label="Chat with Support on WhatsApp"><i class="fa-brands fa-whatsapp" aria-hidden="true"></i><span>Live Support (Online)</span></a>
  </div>
  <script src="assets/script.js"></script>
</body>
</html>
'@
[System.IO.File]::WriteAllText("$PWD\catalog.html", $catalogHtml, [System.Text.Encoding]::UTF8)
Write-Output "catalog.html updated."

$supportHtml = @'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="StreamMax IPTV 24/7 Support Center. Get fast help via WhatsApp, Telegram, or ticket for 24-hour free trials, instant activation, device setup guides, and troubleshooting." />
  <meta name="keywords" content="IPTV support, IPTV free trial, WhatsApp IPTV, Telegram IPTV, IPTV setup tutorial, IPTV Smarters setup, TiviMate setup" />
  <title>StreamMax IPTV | 24/7 VIP Customer Support & Free Trial Desk</title>
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&family=Poppins:wght@500;600;700;800&family=Montserrat:wght@600;700;800&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
  <link rel="stylesheet" href="assets/style.css" />
</head>
<body>
  <div class="page-shell">
    <!-- Top Announcement Bar -->
    <div class="top-announcement">
      <div class="container announcement-inner">
        <span class="announcement-badge"><i class="fa-solid fa-bolt"></i> LIMITED OFFER</span>
        <p class="announcement-text">Experience Elite 4K Streaming — <strong>Claim Your 24-Hour Free Trial</strong> with Instant Setup!</p>
        <a href="#trial" class="announcement-link">Get Free Trial <i class="fa-solid fa-arrow-right"></i></a>
      </div>
    </div>

    <!-- Site Header -->
    <header class="site-header">
      <div class="container header-inner">
        <a href="index.html" class="brand" aria-label="StreamMax IPTV Home">
          <span class="brand-icon-wrapper"><i class="fa-solid fa-play logo-icon" aria-hidden="true"></i></span>
          StreamMax<span>IPTV</span>
        </a>
        <nav class="site-nav" id="main-nav" aria-label="Primary navigation">
          <ul class="nav-list">
            <li><a href="index.html#home">Home</a></li>
            <li><a href="index.html#features">Why Us</a></li>
            <li><a href="index.html#plans">Pricing</a></li>
            <li><a href="index.html#reseller">Resellers</a></li>
            <li><a href="sports.html">Live Sports</a></li>
            <li><a href="catalog.html">Channels & VOD</a></li>
            <li><a href="support.html" class="active">Support</a></li>
          </ul>
        </nav>
        <div class="header-actions">
          <a href="#trial" class="button button-header-trial"><i class="fa-solid fa-bolt"></i> Free Trial</a>
          <button class="nav-toggle" aria-controls="main-nav" aria-expanded="false" id="nav-toggle" aria-label="Toggle navigation menu">
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
          </button>
        </div>
      </div>
    </header>

    <main>
      <section class="page-hero page-hero--support" id="trial">
        <div class="page-hero-background" aria-hidden="true"></div>
        <div class="page-hero-overlay"></div>
        <div class="container hero-content hero-content--small">
          <div class="hero-badge-pill">
            <span class="pulse-dot"></span>
            <span>24/7 DEDICATED TECHNICAL SUPPORT DESK</span>
          </div>
          <h1>Reach StreamMax Support & Claim Your 24h Trial</h1>
          <p class="hero-text">Our specialized streaming technicians are on standby 24/7 to assist with instant trial setup, playlist customization, app installation, and reseller onboarding.</p>
          <div class="hero-actions">
            <a href="https://wa.me/1234567890" target="_blank" rel="noreferrer" class="button button-primary"><i class="fa-brands fa-whatsapp"></i> WhatsApp Live Chat (&lt;2 min)</a>
            <a href="#contact-form" class="button button-secondary"><i class="fa-solid fa-ticket"></i> Submit Support Ticket</a>
          </div>
        </div>
      </section>

      <!-- Fast Support Channels -->
      <section class="section reveal" aria-label="Available support routes">
        <div class="container section-heading">
          <span class="eyebrow"><i class="fa-solid fa-headset"></i> Direct Channels</span>
          <h2>Instant Ways to Connect</h2>
          <p>Choose the communication channel that works best for your schedule and preferred messaging platform.</p>
        </div>
        <div class="container support-grid">
          <article class="support-card">
            <div>
              <i class="fa-brands fa-whatsapp support-card-icon" aria-hidden="true"></i>
              <h3>WhatsApp VIP Support</h3>
              <p>Chat directly with our senior support engineers for real-time setup guidance, test lines, and subscription renewals.</p>
            </div>
            <a href="https://wa.me/1234567890" target="_blank" rel="noreferrer" class="button button-primary button-full"><i class="fa-brands fa-whatsapp"></i> Chat on WhatsApp</a>
          </article>
          <article class="support-card">
            <div>
              <i class="fa-brands fa-telegram support-card-icon" aria-hidden="true"></i>
              <h3>Telegram Official Desk</h3>
              <p>Join our private Telegram channel for instant direct messages, server status broadcasts, and major fixture updates.</p>
            </div>
            <a href="https://t.me/streammaxsupport" target="_blank" rel="noreferrer" class="button button-outline button-full"><i class="fa-brands fa-telegram"></i> Message on Telegram</a>
          </article>
          <article class="support-card">
            <div>
              <i class="fa-solid fa-ticket support-card-icon" aria-hidden="true"></i>
              <h3>Email Helpdesk & Ticket</h3>
              <p>Submit your inquiry below with device details. Our technical team responds with clear step-by-step solutions within 15 minutes.</p>
            </div>
            <a href="#contact-form" class="button button-secondary button-full"><i class="fa-solid fa-envelope"></i> Open Support Ticket</a>
          </article>
        </div>
      </section>

      <!-- Interactive Contact / Trial Form -->
      <section class="section section--alt reveal" id="contact-form" aria-label="Support and trial request form">
        <div class="container section-heading">
          <span class="eyebrow"><i class="fa-solid fa-paper-plane"></i> Quick Ticket Form</span>
          <h2>Request Free Trial, Setup Help or Reseller Quote</h2>
          <p>Fill in your details below and our team will immediately process your request and send login instructions to your email.</p>
        </div>
        <div class="container form-shell">
          <div id="support-form-status" class="form-status" role="status" aria-live="polite"></div>
          <form class="contact-form" id="support-form" novalidate>
            <div class="form-field">
              <label for="name">Your Name</label>
              <input type="text" id="name" name="name" placeholder="e.g. Alexander Smith" required />
            </div>
            <div class="form-field">
              <label for="email">Email Address</label>
              <input type="email" id="email" name="email" placeholder="you@example.com" required />
            </div>
            <div class="form-field">
              <label for="device">Your Streaming Device</label>
              <select id="device" name="device" required>
                <option value="">Select your primary device...</option>
                <option value="Amazon Firestick / Fire TV">Amazon Firestick / Fire TV</option>
                <option value="Smart TV (Samsung / LG / Sony)">Smart TV (Samsung / LG / Sony)</option>
                <option value="Android TV / Box / Nvidia Shield">Android TV / Box / Nvidia Shield</option>
                <option value="Apple TV / iPhone / iPad">Apple TV / iPhone / iPad</option>
                <option value="Windows PC / Mac OS">Windows PC / Mac OS</option>
                <option value="MAG Box / Enigma2 / Formuler">MAG Box / Enigma2 / Formuler</option>
                <option value="Reseller Panel Inquiry">Reseller Panel Wholesale Inquiry</option>
              </select>
            </div>
            <div class="form-field">
              <label for="request-type">Request Type</label>
              <select id="request-type" name="requestType" required>
                <option value="24h Free Trial">24-Hour Free Trial</option>
                <option value="New Subscription Setup">New Subscription Setup</option>
                <option value="Playlist Customization">Playlist & Category Customization</option>
                <option value="Technical Troubleshooting">Technical Troubleshooting</option>
                <option value="Reseller Panel Wholesale">Reseller Panel Wholesale Inquiry</option>
              </select>
            </div>
            <div class="form-field full-width">
              <label for="message">How can our support engineers assist you?</label>
              <textarea id="message" name="message" rows="4" placeholder="Mention your preferred IPTV player (TiviMate, IPTV Smarters Pro, XCIPTV, IBO Player) or specific sports leagues..." required></textarea>
            </div>
            <div class="form-actions">
              <button class="button button-primary" type="submit"><span>Submit Support Request</span> <i class="fa-solid fa-paper-plane"></i></button>
              <p class="form-note"><i class="fa-solid fa-shield-halved"></i> 100% Privacy Guaranteed. Zero Spam.</p>
            </div>
          </form>
        </div>
      </section>

      <!-- Quick Setup FAQ -->
      <section class="section reveal" aria-label="Setup guide FAQ">
        <div class="container section-heading">
          <span class="eyebrow"><i class="fa-solid fa-circle-question"></i> Quick Setup</span>
          <h2>Device Installation Assistance</h2>
          <p>Common step-by-step guidance for activating StreamMax on your favorite player app.</p>
        </div>
        <div class="container faq-accordion-wrapper">
          <article class="faq-item">
            <button class="faq-trigger" aria-expanded="false" id="s-faq-1"><span class="faq-question-text"><i class="fa-brands fa-amazon faq-q-icon"></i> How do I install StreamMax on Amazon Firestick / Fire TV?</span></button>
            <div class="faq-content" role="region" aria-labelledby="s-faq-1"><p>Download the <strong>Downloader app</strong> from the Amazon App Store. Enter our shortcode to download <strong>IPTV Smarters Pro</strong> or <strong>TiviMate</strong>. Launch the player, choose <em>"Login with Xtream Codes API"</em>, and input the Server URL, Username, and Password sent to your email.</p></div>
          </article>
          <article class="faq-item">
            <button class="faq-trigger" aria-expanded="false" id="s-faq-2"><span class="faq-question-text"><i class="fa-solid fa-tv faq-q-icon"></i> How do I set up StreamMax on Samsung or LG Smart TVs?</span></button>
            <div class="faq-content" role="region" aria-labelledby="s-faq-2"><p>Open your Samsung Smart Hub or LG Content Store. Search for <strong>IBO Player</strong>, <strong>Smart IPTV</strong>, or <strong>IPTV Smarters</strong>. Provide us with the Mac Address & Device Key shown on your TV screen, or input the Xtream Codes credentials directly into the app settings.</p></div>
          </article>
          <article class="faq-item">
            <button class="faq-trigger" aria-expanded="false" id="s-faq-3"><span class="faq-question-text"><i class="fa-brands fa-apple faq-q-icon"></i> How do I install on Apple TV, iPhone, and iPad?</span></button>
            <div class="faq-content" role="region" aria-labelledby="s-faq-3"><p>Download <strong>Smarters Player Lite</strong> or <strong>GSE Smart IPTV</strong> from the official Apple App Store. Enter your StreamMax Xtream Codes login details. Your full 15,000+ live channel lineup and 60,000+ VOD catalog will load in seconds.</p></div>
          </article>
        </div>
      </section>
    </main>

    <!-- FOOTER -->
    <footer class="site-footer">
      <div class="container footer-grid">
        <div class="footer-col-main">
          <a href="index.html" class="brand footer-brand"><span class="brand-icon-wrapper"><i class="fa-solid fa-play logo-icon" aria-hidden="true"></i></span>StreamMax<span>IPTV</span></a>
          <p class="footer-desc">The world's leading premium IPTV provider delivering 15,000+ live channels, PPV events, and 60,000+ 4K VOD titles with anti-freeze server infrastructure and 24/7 dedicated support.</p>
          <div class="footer-status-pill"><span class="status-indicator"></span><span>All Global Server Clusters Operational (99.9%)</span></div>
        </div>
        <div>
          <h3>Quick Links</h3>
          <ul>
            <li><a href="index.html#home">Home</a></li>
            <li><a href="index.html#plans">Pricing Plans</a></li>
            <li><a href="index.html#reseller">Reseller Panels</a></li>
            <li><a href="sports.html">Live Sports Schedule</a></li>
            <li><a href="catalog.html">Channel Catalog</a></li>
            <li><a href="support.html">Contact & Setup</a></li>
          </ul>
        </div>
        <div>
          <h3>Contact & Help</h3>
          <ul>
            <li><a href="mailto:support@streammaxiptv.com"><i class="fa-solid fa-envelope"></i> support@streammaxiptv.com</a></li>
            <li><a href="https://wa.me/1234567890" target="_blank" rel="noreferrer"><i class="fa-brands fa-whatsapp"></i> WhatsApp Live Chat</a></li>
            <li><a href="https://t.me/streammaxsupport" target="_blank" rel="noreferrer"><i class="fa-brands fa-telegram"></i> Telegram Support</a></li>
            <li><a href="support.html#contact-form"><i class="fa-solid fa-ticket"></i> Open Support Ticket</a></li>
            <li><a href="index.html#faq"><i class="fa-solid fa-circle-question"></i> Help FAQ</a></li>
          </ul>
        </div>
        <div>
          <h3>Connect & Pay</h3>
          <p class="footer-subtext">Follow our community for fixture alerts and server updates.</p>
          <div class="footer-icon-row" aria-label="Social media links">
            <a href="https://wa.me/1234567890" target="_blank" rel="noreferrer" class="footer-icon-placeholder" aria-label="WhatsApp" title="WhatsApp"><i class="fa-brands fa-whatsapp"></i></a>
            <a href="https://t.me/streammaxsupport" target="_blank" rel="noreferrer" class="footer-icon-placeholder" aria-label="Telegram" title="Telegram"><i class="fa-brands fa-telegram"></i></a>
            <a href="https://x.com" target="_blank" rel="noreferrer" class="footer-icon-placeholder" aria-label="X (Twitter)" title="X / Twitter"><i class="fa-brands fa-x-twitter"></i></a>
            <a href="https://instagram.com" target="_blank" rel="noreferrer" class="footer-icon-placeholder" aria-label="Instagram" title="Instagram"><i class="fa-brands fa-instagram"></i></a>
          </div>
          <div class="footer-payment-wrapper">
            <span class="payment-title">Guaranteed Safe Checkout:</span>
            <div class="footer-payment-placeholders" aria-label="Supported payment methods">
              <span class="payment-placeholder" title="Visa Card"><i class="fa-brands fa-cc-visa"></i></span>
              <span class="payment-placeholder" title="Mastercard"><i class="fa-brands fa-cc-mastercard"></i></span>
              <span class="payment-placeholder" title="Apple Pay"><i class="fa-brands fa-cc-apple-pay"></i></span>
              <span class="payment-placeholder" title="PayPal"><i class="fa-brands fa-paypal"></i></span>
              <span class="payment-placeholder" title="Bitcoin / Crypto"><i class="fa-brands fa-bitcoin"></i></span>
              <span class="payment-placeholder" title="USDT Tether"><i class="fa-solid fa-coins"></i></span>
            </div>
          </div>
        </div>
      </div>
      <div class="container footer-bottom">
        <div class="footer-bottom-inner">
          <p>&copy; 2026 StreamMax IPTV. All rights reserved.</p>
          <div class="footer-bottom-links"><a href="support.html">Terms of Service</a><span>•</span><a href="support.html">Privacy Policy</a><span>•</span><a href="support.html">Refund Guarantee</a></div>
        </div>
      </div>
    </footer>
    <button class="back-to-top" aria-label="Back to top" title="Scroll to top"><i class="fa-solid fa-arrow-up" aria-hidden="true"></i></button>
    <a class="sticky-cta" href="https://wa.me/1234567890" target="_blank" rel="noreferrer" aria-label="Chat with Support on WhatsApp"><i class="fa-brands fa-whatsapp" aria-hidden="true"></i><span>Live Support (Online)</span></a>
  </div>
  <script src="assets/script.js"></script>
</body>
</html>
'@
[System.IO.File]::WriteAllText("$PWD\support.html", $supportHtml, [System.Text.Encoding]::UTF8)
Write-Output "support.html updated."
