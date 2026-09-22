<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== ROOT VARIABLES ========== */
        :root {
            --bg: #fafaf8;
            --bg-card: #ffffff;
            --primary: #1a1a2e;
            --primary-light: #2d2d44;
            --accent: #e07a5f;
            --accent-light: #f4d0c4;
            --accent-dark: #c05a3e;
            --muted: #6b6b7a;
            --muted-light: #a0a0b0;
            --surface: #f0efed;
            --success: #2a9d8f;
            --warning: #e9c46a;
            --radius: 16px;
            --radius-sm: 10px;
            --shadow: 0 4px 24px rgba(26, 26, 46, 0.06);
            --shadow-hover: 0 12px 48px rgba(26, 26, 46, 0.10);
            --transition: 0.25s cubic-bezier(0.4, 0, 0.2, 1);
            --container: 1240px;
        }

        /* ========== RESET & BASE ========== */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        html {
            scroll-behavior: smooth;
        }
        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
        a {
            color: inherit;
            text-decoration: none;
        }
        img {
            display: block;
            max-width: 100%;
        }
        button {
            cursor: pointer;
            font-family: inherit;
            border: none;
            background: none;
            color: inherit;
        }
        input {
            font-family: inherit;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ========== UTILITIES ========== */
        .muted {
            color: var(--muted);
        }
        .text-center {
            text-align: center;
        }
        .sr-only {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0, 0, 0, 0);
            border: 0;
        }

        /* ========== BUTTONS ========== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            padding: 12px 28px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 15px;
            transition: var(--transition);
            border: 2px solid transparent;
        }
        .btn-primary {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
        }
        .btn-primary:hover {
            background: var(--accent-dark);
            border-color: var(--accent-dark);
            transform: translateY(-2px);
            box-shadow: 0 8px 24px rgba(224, 122, 95, 0.30);
        }
        .btn-secondary {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
        }
        .btn-secondary:hover {
            background: var(--primary-light);
            border-color: var(--primary-light);
            transform: translateY(-2px);
            box-shadow: 0 8px 24px rgba(26, 26, 46, 0.20);
        }
        .btn-outline {
            background: transparent;
            color: var(--primary);
            border-color: rgba(26, 26, 46, 0.15);
        }
        .btn-outline:hover {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
            transform: translateY(-2px);
        }
        .btn-ghost {
            background: rgba(255, 255, 255, 0.15);
            color: #fff;
            border-color: rgba(255, 255, 255, 0.25);
        }
        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.25);
            border-color: rgba(255, 255, 255, 0.4);
            transform: translateY(-2px);
        }
        .btn-sm {
            padding: 8px 18px;
            font-size: 13px;
        }

        /* ========== HEADER ========== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(26, 26, 46, 0.04);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 12px 0;
            min-height: 68px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 800;
            font-size: 22px;
            letter-spacing: -0.5px;
            color: var(--primary);
            flex-shrink: 0;
        }
        .brand .accent {
            color: var(--accent);
        }
        .brand i {
            font-size: 26px;
            color: var(--accent);
        }

        nav.main-nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
            align-items: center;
        }
        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 6px;
            padding: 8px 16px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            font-size: 14px;
            color: var(--muted);
            transition: var(--transition);
        }
        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            background: var(--surface);
            color: var(--primary);
        }
        nav.main-nav li a i {
            font-size: 14px;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 6px;
            flex-shrink: 0;
        }
        .header-actions .icon-btn {
            width: 42px;
            height: 42px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            font-size: 18px;
            color: var(--muted);
            transition: var(--transition);
            position: relative;
        }
        .header-actions .icon-btn:hover {
            background: var(--surface);
            color: var(--primary);
        }

        .cart-wrap {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: var(--accent);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            border: 2px solid #fff;
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: var(--surface);
            border-radius: 999px;
            padding: 0 16px 0 18px;
            transition: var(--transition);
            border: 2px solid transparent;
            min-width: 220px;
        }
        .search-wrap:focus-within {
            border-color: var(--accent);
            background: #fff;
            box-shadow: 0 0 0 4px rgba(224, 122, 95, 0.10);
        }
        .search-wrap input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 10px 0;
            font-size: 14px;
            color: var(--primary);
        }
        .search-wrap input::placeholder {
            color: var(--muted-light);
        }
        .search-wrap button {
            padding: 8px 0 8px 10px;
            color: var(--muted);
            font-size: 15px;
            transition: var(--transition);
        }
        .search-wrap button:hover {
            color: var(--accent);
        }

        .mobile-toggle {
            display: none;
            width: 42px;
            height: 42px;
            border-radius: 50%;
            font-size: 20px;
            background: var(--surface);
            color: var(--primary);
            transition: var(--transition);
        }
        .mobile-toggle:hover {
            background: var(--accent-light);
        }

        #mobileMenu {
            display: none;
            background: #fff;
            border-top: 1px solid rgba(26, 26, 46, 0.04);
            padding: 12px 0 20px;
        }
        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 4px;
        }
        #mobileMenu ul li a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 12px 16px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            color: var(--primary);
            transition: var(--transition);
        }
        #mobileMenu ul li a:hover {
            background: var(--surface);
        }
        #mobileMenu ul li a i {
            width: 22px;
            color: var(--muted);
        }

        /* ========== HERO ========== */
        .hero {
            position: relative;
            display: flex;
            align-items: center;
            min-height: 480px;
            padding: 60px 0;
            border-radius: var(--radius);
            overflow: hidden;
            margin: 20px 24px 0;
            background: linear-gradient(135deg, #1a1a2e 0%, #2d2d44 100%);
        }
        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            opacity: 0.35;
            z-index: 0;
        }
        .hero .container {
            position: relative;
            z-index: 1;
        }
        .hero .badge {
            display: inline-block;
            background: rgba(224, 122, 95, 0.20);
            color: var(--accent);
            padding: 4px 16px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 13px;
            letter-spacing: 0.3px;
            margin-bottom: 16px;
        }
        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: 48px;
            font-weight: 700;
            color: #fff;
            line-height: 1.15;
            max-width: 640px;
            margin-bottom: 16px;
        }
        .hero p {
            color: rgba(255, 255, 255, 0.80);
            font-size: 17px;
            max-width: 520px;
            margin-bottom: 28px;
            line-height: 1.6;
        }
        .hero .actions {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        /* ========== SECTION ========== */
        .section {
            padding: 56px 0;
        }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: 32px;
            flex-wrap: wrap;
        }
        .section-header .title-group h2 {
            font-size: 28px;
            font-weight: 700;
            letter-spacing: -0.3px;
        }
        .section-header .title-group p {
            color: var(--muted);
            margin-top: 4px;
            font-size: 15px;
        }
        .section-header .view-all {
            font-weight: 600;
            color: var(--accent);
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 14px;
            transition: var(--transition);
            white-space: nowrap;
        }
        .section-header .view-all:hover {
            gap: 12px;
            color: var(--accent-dark);
        }

        /* ========== CATEGORIES ========== */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }
        .cat-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 24px 16px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: var(--transition);
            cursor: pointer;
            border: 2px solid transparent;
        }
        .cat-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-light);
        }
        .cat-card .icon-wrap {
            width: 56px;
            height: 56px;
            border-radius: 50%;
            background: var(--accent-light);
            display: grid;
            place-items: center;
            margin: 0 auto 12px;
            font-size: 24px;
            color: var(--accent);
            transition: var(--transition);
        }
        .cat-card:hover .icon-wrap {
            background: var(--accent);
            color: #fff;
        }
        .cat-card h4 {
            font-size: 15px;
            font-weight: 600;
        }
        .cat-card .count {
            font-size: 13px;
            color: var(--muted);
            margin-top: 4px;
        }

        /* ========== PRODUCTS ========== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }
        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
            display: flex;
            flex-direction: column;
            border: 2px solid transparent;
        }
        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-light);
        }
        .product-card .img-wrap {
            position: relative;
            overflow: hidden;
            background: var(--surface);
            aspect-ratio: 1 / 1;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }
        .product-card:hover .img-wrap img {
            transform: scale(1.04);
        }
        .product-card .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: var(--accent);
            color: #fff;
            padding: 4px 12px;
            border-radius: 999px;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.3px;
        }
        .product-card .badge.sale {
            background: var(--warning);
            color: var(--primary);
        }
        .product-card .wish-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.90);
            display: grid;
            place-items: center;
            font-size: 16px;
            color: var(--muted);
            transition: var(--transition);
            backdrop-filter: blur(4px);
        }
        .product-card .wish-btn:hover {
            background: #fff;
            color: var(--accent);
            transform: scale(1.10);
        }
        .product-card .body {
            padding: 16px 18px 14px;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        .product-card .body .category-tag {
            font-size: 12px;
            color: var(--muted-light);
            text-transform: uppercase;
            letter-spacing: 0.5px;
            font-weight: 600;
        }
        .product-card .body h5 {
            font-size: 15px;
            font-weight: 600;
            line-height: 1.3;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .product-card .body .price-row {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: 4px;
        }
        .product-card .body .price {
            font-weight: 700;
            font-size: 18px;
            color: var(--primary);
        }
        .product-card .body .old-price {
            color: var(--muted-light);
            text-decoration: line-through;
            font-size: 14px;
        }
        .product-card .body .rating {
            display: flex;
            align-items: center;
            gap: 4px;
            font-size: 13px;
            color: #f5a623;
        }
        .product-card .body .rating span {
            color: var(--muted);
            font-weight: 400;
        }
        .product-card .footer {
            padding: 0 18px 18px;
            display: flex;
            gap: 10px;
        }
        .product-card .footer .add-btn {
            flex: 1;
            padding: 10px;
            border-radius: var(--radius-sm);
            background: var(--primary);
            color: #fff;
            font-weight: 600;
            font-size: 14px;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        .product-card .footer .add-btn:hover {
            background: var(--accent);
            transform: scale(1.02);
        }
        .product-card .footer .add-btn.added {
            background: var(--success);
        }

        /* ========== DEAL ========== */
        .deal-wrap {
            display: flex;
            gap: 0;
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
        }
        .deal-wrap .deal-img {
            flex: 0 0 48%;
            background: var(--surface);
            min-height: 300px;
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .deal-wrap .deal-content {
            flex: 1;
            padding: 40px 44px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            display: inline-block;
            background: var(--warning);
            color: var(--primary);
            padding: 4px 14px;
            border-radius: 999px;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            align-self: flex-start;
            margin-bottom: 12px;
        }
        .deal-wrap .deal-content h3 {
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 6px;
        }
        .deal-wrap .deal-content .desc {
            color: var(--muted);
            margin-bottom: 18px;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 32px;
            font-weight: 800;
            color: var(--primary);
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 20px;
            font-weight: 400;
            color: var(--muted-light);
            text-decoration: line-through;
            margin-left: 10px;
        }
        .deal-wrap .deal-content .stock {
            font-size: 14px;
            color: var(--muted);
            margin: 4px 0 16px;
        }
        .deal-wrap .deal-content .stock strong {
            color: var(--accent);
        }

        .timer-grid {
            display: flex;
            gap: 12px;
            margin: 16px 0 20px;
        }
        .timer-box {
            background: var(--primary);
            color: #fff;
            padding: 10px 16px;
            border-radius: var(--radius-sm);
            min-width: 68px;
            text-align: center;
        }
        .timer-box .num {
            font-size: 26px;
            font-weight: 700;
            line-height: 1.2;
        }
        .timer-box .label {
            font-size: 11px;
            opacity: 0.70;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        /* ========== TESTIMONIALS ========== */
        .testimonials-scroll {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 8px 4px 16px;
            scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
        }
        .testimonials-scroll::-webkit-scrollbar {
            height: 4px;
        }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: var(--accent-light);
            border-radius: 999px;
        }
        .testimonial-card {
            flex: 0 0 340px;
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 24px 26px;
            box-shadow: var(--shadow);
            scroll-snap-align: start;
            transition: var(--transition);
        }
        .testimonial-card:hover {
            box-shadow: var(--shadow-hover);
        }
        .testimonial-card .stars {
            color: #f5a623;
            font-size: 16px;
            letter-spacing: 2px;
            margin-bottom: 10px;
        }
        .testimonial-card blockquote {
            font-size: 15px;
            line-height: 1.6;
            color: var(--primary);
            margin-bottom: 14px;
            font-style: italic;
        }
        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .testimonial-card .author .avatar {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            object-fit: cover;
            background: var(--surface);
        }
        .testimonial-card .author .name {
            font-weight: 600;
            font-size: 14px;
        }
        .testimonial-card .author .role {
            font-size: 13px;
            color: var(--muted);
        }

        /* ========== NEWSLETTER ========== */
        .newsletter-wrap {
            background: linear-gradient(135deg, var(--primary) 0%, var(--primary-light) 100%);
            border-radius: var(--radius);
            padding: 48px 56px;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 32px;
            flex-wrap: wrap;
        }
        .newsletter-wrap .text h3 {
            font-size: 26px;
            font-weight: 700;
            margin-bottom: 4px;
        }
        .newsletter-wrap .text p {
            opacity: 0.75;
            font-size: 15px;
        }
        .newsletter-wrap form {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            flex: 1;
            max-width: 480px;
        }
        .newsletter-wrap form input {
            flex: 1;
            min-width: 200px;
            padding: 14px 20px;
            border-radius: 999px;
            border: 0;
            font-size: 15px;
            background: rgba(255, 255, 255, 0.12);
            color: #fff;
            transition: var(--transition);
            outline: 2px solid transparent;
        }
        .newsletter-wrap form input::placeholder {
            color: rgba(255, 255, 255, 0.5);
        }
        .newsletter-wrap form input:focus {
            outline-color: var(--accent);
            background: rgba(255, 255, 255, 0.18);
        }
        .newsletter-wrap form .btn {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
            padding: 14px 32px;
        }
        .newsletter-wrap form .btn:hover {
            background: var(--accent-dark);
            border-color: var(--accent-dark);
        }
        #newsletterMsg {
            margin-top: 12px;
            font-size: 14px;
            opacity: 0.9;
            width: 100%;
        }

        /* ========== FOOTER ========== */
        footer {
            margin-top: 16px;
            padding: 44px 0 28px;
            border-top: 1px solid rgba(26, 26, 46, 0.04);
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 32px;
        }
        .footer-grid .brand-col .brand {
            font-size: 20px;
            margin-bottom: 8px;
        }
        .footer-grid .brand-col p {
            color: var(--muted);
            font-size: 14px;
            max-width: 300px;
            line-height: 1.6;
        }
        .footer-grid .brand-col .socials {
            display: flex;
            gap: 10px;
            margin-top: 14px;
        }
        .footer-grid .brand-col .socials a {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: var(--surface);
            display: grid;
            place-items: center;
            color: var(--muted);
            transition: var(--transition);
            font-size: 16px;
        }
        .footer-grid .brand-col .socials a:hover {
            background: var(--accent);
            color: #fff;
        }
        .footer-grid .col h5 {
            font-weight: 700;
            font-size: 14px;
            margin-bottom: 12px;
            color: var(--primary);
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        .footer-grid .col ul li a {
            color: var(--muted);
            font-size: 14px;
            transition: var(--transition);
        }
        .footer-grid .col ul li a:hover {
            color: var(--accent);
        }
        .footer-bottom {
            text-align: center;
            padding-top: 20px;
            border-top: 1px solid rgba(26, 26, 46, 0.04);
            color: var(--muted-light);
            font-size: 13px;
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 1200px) {
            .products-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .categories-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .footer-grid {
                grid-template-columns: 1fr 1fr;
                gap: 28px;
            }
        }

        @media (max-width: 992px) {
            .hero h1 {
                font-size: 36px;
            }
            .hero {
                min-height: 380px;
                margin: 16px 16px 0;
                padding: 40px 0;
            }
            .deal-wrap {
                flex-direction: column;
            }
            .deal-wrap .deal-img {
                flex: 0 0 240px;
            }
            .deal-wrap .deal-content {
                padding: 28px 30px;
            }
            .newsletter-wrap {
                padding: 32px 28px;
                flex-direction: column;
                text-align: center;
            }
            .newsletter-wrap form {
                max-width: 100%;
            }
            .search-wrap {
                min-width: 150px;
            }
        }

        @media (max-width: 768px) {
            nav.main-nav {
                display: none;
            }
            .mobile-toggle {
                display: grid;
                place-items: center;
            }
            .products-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 14px;
            }
            .categories-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 12px;
            }
            .hero h1 {
                font-size: 28px;
            }
            .hero p {
                font-size: 15px;
            }
            .section-header h2 {
                font-size: 22px;
            }
            .deal-wrap .deal-content h3 {
                font-size: 22px;
            }
            .deal-wrap .deal-content .price-big {
                font-size: 26px;
            }
            .timer-box {
                min-width: 56px;
                padding: 8px 12px;
            }
            .timer-box .num {
                font-size: 20px;
            }
            .footer-grid {
                grid-template-columns: 1fr;
                gap: 20px;
            }
            .header-inner {
                flex-wrap: nowrap;
            }
            .brand {
                font-size: 18px;
            }
            .brand i {
                font-size: 20px;
            }
            .search-wrap {
                min-width: 120px;
                padding: 0 10px 0 14px;
            }
            .search-wrap input {
                font-size: 13px;
                padding: 8px 0;
            }
            .header-actions .icon-btn {
                width: 36px;
                height: 36px;
                font-size: 15px;
            }
            .cart-count {
                width: 18px;
                height: 18px;
                font-size: 10px;
            }
            .testimonial-card {
                flex: 0 0 280px;
            }
            .hero .actions .btn {
                padding: 10px 20px;
                font-size: 14px;
            }
            .section {
                padding: 36px 0;
            }
        }

        @media (max-width: 480px) {
            .products-grid {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }
            .categories-grid {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }
            .hero {
                margin: 10px 10px 0;
                min-height: 300px;
                padding: 28px 0;
                border-radius: var(--radius-sm);
            }
            .hero h1 {
                font-size: 24px;
            }
            .container {
                padding: 0 14px;
            }
            .deal-wrap .deal-content {
                padding: 20px 18px;
            }
            .deal-wrap .deal-img {
                flex: 0 0 180px;
            }
            .newsletter-wrap {
                padding: 24px 18px;
            }
            .newsletter-wrap .text h3 {
                font-size: 20px;
            }
            .product-card .body {
                padding: 12px 12px 8px;
            }
            .product-card .body h5 {
                font-size: 13px;
            }
            .product-card .body .price {
                font-size: 15px;
            }
            .product-card .footer {
                padding: 0 12px 12px;
            }
            .product-card .footer .add-btn {
                font-size: 12px;
                padding: 8px;
            }
            .timer-box {
                min-width: 46px;
                padding: 6px 8px;
            }
            .timer-box .num {
                font-size: 16px;
            }
            .timer-box .label {
                font-size: 9px;
            }
            .cat-card {
                padding: 16px 10px;
            }
            .cat-card .icon-wrap {
                width: 44px;
                height: 44px;
                font-size: 18px;
            }
            .cat-card h4 {
                font-size: 13px;
            }
        }
    
/* ===== INTERACTIVE UI ENHANCEMENTS ===== */
:root{
    --accent-2:#7c3aed;
    --glass:rgba(255,255,255,.72);
    --border:rgba(26,26,46,.08);
}
body{
    background:
      radial-gradient(circle at 10% 0%, rgba(224,122,95,.08), transparent 28rem),
      radial-gradient(circle at 90% 15%, rgba(124,58,237,.06), transparent 26rem),
      var(--bg);
}
body.dark{
    --bg:#0c0d13; --bg-card:#151722; --primary:#f7f7fb; --primary-light:#242636;
    --muted:#a7a9b8; --muted-light:#777b8d; --surface:#202230;
    --accent-light:#40251f; --border:rgba(255,255,255,.09);
    background:radial-gradient(circle at 15% 0%,rgba(224,122,95,.12),transparent 28rem),#0c0d13;
}
body.dark header{background:rgba(12,13,19,.82);border-bottom-color:var(--border)}
body.dark .search-wrap{background:#202230}
body.dark .search-wrap:focus-within{background:#171822}
body.dark .cat-card,body.dark .product-card,body.dark .deal-wrap,body.dark .testimonial-card{background:var(--bg-card)}
body.dark footer{border-color:var(--border)}
body.dark .modal-card,body.dark .cart-drawer{background:#151722;color:var(--primary)}
body.dark .cart-item{border-color:var(--border)}

.hero{
    min-height:520px;
    background:linear-gradient(120deg,#15162b 0%,#30233f 55%,#7c3d3d 100%);
    isolation:isolate;
}
.hero::after{
    content:"";position:absolute;inset:auto -10% -55% 25%;height:80%;
    background:radial-gradient(circle,rgba(224,122,95,.42),transparent 62%);
    filter:blur(25px);z-index:0;pointer-events:none;
}
.hero-content{max-width:760px}
.hero h1{font-size:clamp(38px,5vw,64px);letter-spacing:-1.5px}
.hero h1 .accent-text{color:#f6a38e}
.hero .eyebrow{display:flex;align-items:center;gap:9px;color:#fff;opacity:.85;font-size:13px;font-weight:700;margin-bottom:12px}
.hero .eyebrow .pulse-dot{width:8px;height:8px;border-radius:50%;background:#7ee2b8;box-shadow:0 0 0 6px rgba(126,226,184,.12);animation:pulse 1.8s infinite}
@keyframes pulse{50%{box-shadow:0 0 0 11px rgba(126,226,184,0)}}
.hero-stats{display:flex;gap:28px;margin-top:30px;color:#fff;flex-wrap:wrap}
.hero-stat strong{display:block;font-size:20px}.hero-stat span{font-size:12px;opacity:.65}

.header-actions .icon-btn{border:1px solid transparent}
.header-actions .icon-btn:hover{border-color:var(--border)}
.theme-btn{font-size:16px!important}
.user-menu-wrap{position:relative}
.user-menu{
    position:absolute;right:0;top:52px;width:210px;padding:8px;background:var(--bg-card);
    border:1px solid var(--border);border-radius:16px;box-shadow:0 20px 50px rgba(0,0,0,.14);
    display:none;z-index:200;
}
.user-menu.open{display:block;animation:pop .18s ease}
.user-menu button{width:100%;text-align:left;padding:11px 12px;border-radius:10px;font-size:14px}
.user-menu button:hover{background:var(--surface)}
@keyframes pop{from{opacity:0;transform:translateY(-5px) scale(.98)}to{opacity:1;transform:none}}

.filters{
    display:flex;gap:10px;align-items:center;justify-content:space-between;
    flex-wrap:wrap;margin:-8px 0 26px;
}
.filter-chips{display:flex;gap:8px;flex-wrap:wrap}
.filter-chip{
    padding:9px 14px;border:1px solid var(--border);border-radius:999px;background:var(--bg-card);
    color:var(--muted);font-weight:600;font-size:13px;transition:var(--transition)
}
.filter-chip:hover,.filter-chip.active{background:var(--primary);color:#fff;border-color:var(--primary)}
.sort-select{
    border:1px solid var(--border);background:var(--bg-card);color:var(--primary);
    border-radius:999px;padding:10px 14px;outline:none;font:inherit;font-size:13px
}
.results-meta{font-size:13px;color:var(--muted);margin:-12px 0 18px}

.product-card{position:relative}
.product-card .quick-view{
    position:absolute;left:12px;right:12px;bottom:88px;z-index:3;
    padding:10px;border-radius:11px;background:rgba(20,20,30,.86);color:#fff;
    opacity:0;transform:translateY(8px);transition:var(--transition);backdrop-filter:blur(8px);
}
@media (hover:hover) and (pointer:fine){
    .product-card:hover .quick-view{opacity:1;transform:none}
}
.product-card .quick-view:hover{background:var(--accent)}
.product-card.is-favorite .wish-btn{color:#e25570;background:#fff0f3}
.product-card.is-favorite .wish-btn i:before{content:"\f004";font-weight:900}
.product-card .img-wrap:after{
    content:"";position:absolute;inset:0;pointer-events:none;
    background:linear-gradient(180deg,rgba(0,0,0,.06),transparent 35%,rgba(0,0,0,.05));
    opacity:0;transition:var(--transition)
}
.product-card:hover .img-wrap:after{opacity:1}

.empty-state{grid-column:1/-1;text-align:center;padding:70px 20px;color:var(--muted)}
.empty-state i{font-size:42px;display:block;margin-bottom:12px;color:var(--accent)}

.toast{
    position:fixed;right:24px;bottom:24px;z-index:500;background:var(--primary);color:#fff;
    padding:13px 16px;border-radius:13px;box-shadow:0 18px 50px rgba(0,0,0,.2);
    display:flex;align-items:center;gap:10px;max-width:min(380px,calc(100vw - 32px));
    transform:translateY(24px);opacity:0;pointer-events:none;transition:.28s ease
}
.toast.show{transform:none;opacity:1}.toast i{color:#7ee2b8}

.overlay{
    position:fixed;inset:0;background:rgba(10,10,18,.52);backdrop-filter:blur(4px);
    z-index:300;opacity:0;pointer-events:none;transition:.25s
}.overlay.show{opacity:1;pointer-events:auto}
.cart-drawer{
    position:fixed;right:0;top:0;height:100%;width:min(430px,100%);
    background:var(--bg-card);z-index:350;transform:translateX(100%);transition:.3s ease;
    display:flex;flex-direction:column;box-shadow:-20px 0 70px rgba(0,0,0,.16)
}.cart-drawer.open{transform:none}
.cart-head{padding:20px;display:flex;align-items:center;justify-content:space-between;border-bottom:1px solid var(--border)}
.cart-head h3{font-size:20px}.close-btn{width:40px;height:40px;border-radius:50%;background:var(--surface)}
.cart-items{flex:1;overflow:auto;padding:12px 20px}
.cart-item{display:grid;grid-template-columns:68px 1fr auto;gap:12px;padding:14px 0;border-bottom:1px solid var(--border);align-items:center}
.cart-item img{width:68px;height:68px;object-fit:cover;border-radius:12px;background:var(--surface)}
.cart-item h4{font-size:14px;margin-bottom:5px}.cart-item .small{font-size:12px;color:var(--muted)}
.qty{display:flex;align-items:center;gap:8px;margin-top:8px}.qty button{width:28px;height:28px;border-radius:8px;background:var(--surface)}
.remove-item{color:#c85c5c;font-size:12px;margin-top:5px}
.cart-total{padding:18px 20px;border-top:1px solid var(--border)}
.cart-total-row{display:flex;justify-content:space-between;font-weight:700;font-size:18px;margin-bottom:14px}
.checkout-btn{width:100%}
.cart-empty{text-align:center;padding:70px 15px;color:var(--muted)}.cart-empty i{font-size:40px;margin-bottom:12px}

.modal{
    position:fixed;inset:0;z-index:400;display:grid;place-items:center;padding:18px;
    opacity:0;pointer-events:none;transition:.25s
}.modal.open{opacity:1;pointer-events:auto}
.modal-card{
    width:min(880px,100%);max-height:90vh;overflow:auto;background:#fff;border-radius:22px;
    box-shadow:0 30px 90px rgba(0,0,0,.25);transform:translateY(20px) scale(.98);transition:.28s
}.modal.open .modal-card{transform:none}
.quick-modal-grid{display:grid;grid-template-columns:1fr 1fr}
.quick-modal-grid img{width:100%;height:100%;min-height:390px;object-fit:cover;border-radius:22px 0 0 22px}
.quick-info{padding:36px;display:flex;flex-direction:column;justify-content:center}.quick-info .category-tag{color:var(--muted);text-transform:uppercase;font-size:12px;font-weight:700}
.quick-info h2{font-size:30px;margin:8px 0}.quick-info .price{font-size:28px;font-weight:800}.quick-info .rating{margin:10px 0;color:#f5a623}.quick-info p{color:var(--muted);line-height:1.7;margin:8px 0 22px}.modal-close{position:absolute;right:14px;top:14px}
.modal-shell{position:relative}

.scroll-top{
    position:fixed;right:22px;bottom:22px;width:44px;height:44px;border-radius:50%;z-index:250;
    background:var(--accent);color:#fff;display:grid;place-items:center;box-shadow:0 10px 30px rgba(224,122,95,.3);
    opacity:0;pointer-events:none;transform:translateY(10px);transition:.25s
}.scroll-top.show{opacity:1;pointer-events:auto;transform:none}.scroll-top:hover{transform:translateY(-3px)}

.reveal{opacity:0;transform:translateY(18px);transition:.65s ease}.reveal.visible{opacity:1;transform:none}
@media (prefers-reduced-motion:reduce){*,*::before,*::after{scroll-behavior:auto!important;animation:none!important;transition:none!important}.reveal{opacity:1;transform:none}}
@media (max-width:768px){
    .hero{min-height:500px}.hero-stats{gap:18px}
    .filters{align-items:stretch}.sort-select{width:100%}
    .filter-chips{overflow:auto;flex-wrap:nowrap;padding-bottom:4px}
    .filter-chip{white-space:nowrap}
    .quick-modal-grid{grid-template-columns:1fr}.quick-modal-grid img{min-height:250px;max-height:330px;border-radius:22px 22px 0 0}.quick-info{padding:24px}
    .toast{right:16px;bottom:16px}
}

    
/* =========================================================
   NEXUSSHOP V2 — ELECTRIC TEAL / VIOLET THEME
   ========================================================= */
:root {
    --bg: #f4f7fb;
    --bg-card: #ffffff;
    --primary: #111827;
    --primary-light: #26324a;
    --accent: #06b6a4;
    --accent-light: #c8f7f1;
    --accent-dark: #058f82;
    --muted: #667085;
    --muted-light: #98a2b3;
    --surface: #eaf0f6;
    --success: #16a34a;
    --warning: #8b5cf6;
    --radius: 18px;
    --radius-sm: 12px;
    --shadow: 0 8px 30px rgba(17, 24, 39, .06);
    --shadow-hover: 0 20px 55px rgba(17, 24, 39, .13);
    --transition: .28s cubic-bezier(.2,.75,.25,1);
}

/* ---------- Global ---------- */
body {
    background:
        radial-gradient(circle at 0% 0%, rgba(6,182,164,.10), transparent 22rem),
        radial-gradient(circle at 100% 8%, rgba(139,92,246,.10), transparent 24rem),
        var(--bg);
}

::selection {
    background: rgba(6,182,164,.22);
    color: var(--primary);
}

/* ---------- Header ---------- */
header {
    background: rgba(255,255,255,.78);
    border-bottom: 1px solid rgba(17,24,39,.07);
}

.brand i,
.brand .accent {
    color: var(--accent);
}

nav.main-nav li a {
    border-radius: 999px;
}

nav.main-nav li a:hover,
nav.main-nav li a.active {
    background: #e7fbf8;
    color: #0f766e;
}

.search-wrap {
    background: #eef3f8;
    border-color: transparent;
}

.search-wrap:focus-within {
    border-color: var(--accent);
    background: #fff;
    box-shadow: 0 0 0 4px rgba(6,182,164,.12);
}

.header-actions .icon-btn:hover {
    background: #e8f8f6;
    color: #0f766e;
}

.cart-count {
    background: linear-gradient(135deg, #06b6a4, #0f766e);
    border-color: #fff;
}

/* ---------- Buttons ---------- */
.btn-primary {
    background: linear-gradient(135deg, #06b6a4, #0f766e);
    border-color: transparent;
    box-shadow: 0 8px 24px rgba(6,182,164,.22);
}

.btn-primary:hover {
    background: linear-gradient(135deg, #0f766e, #115e59);
    border-color: transparent;
    box-shadow: 0 12px 30px rgba(6,182,164,.30);
}

.btn-secondary {
    background: #111827;
    border-color: #111827;
}

.btn-outline {
    border-color: #d6dee8;
}

.btn-outline:hover {
    background: #111827;
    border-color: #111827;
}

/* ---------- Hero ---------- */
.hero {
    margin-top: 18px;
    min-height: 540px;
    border-radius: 26px;
    background:
        radial-gradient(circle at 82% 18%, rgba(6,182,164,.35), transparent 20rem),
        radial-gradient(circle at 68% 85%, rgba(139,92,246,.32), transparent 24rem),
        linear-gradient(125deg, #0b1324 0%, #151f38 52%, #24204a 100%);
    box-shadow: 0 24px 70px rgba(17,24,39,.16);
}

.hero::before {
    opacity: .17;
    filter: saturate(.75);
}

.hero::after {
    background: radial-gradient(circle, rgba(6,182,164,.28), transparent 62%);
}

.hero .badge {
    background: rgba(6,182,164,.14);
    color: #7de8dd;
    border: 1px solid rgba(125,232,221,.18);
}

.hero h1 .accent-text {
    background: linear-gradient(90deg, #7de8dd, #c4b5fd);
    -webkit-background-clip: text;
    background-clip: text;
    color: transparent;
}

.hero .eyebrow .pulse-dot {
    background: #7de8dd;
}

.hero-stats {
    gap: 34px;
}

.hero-stat strong {
    color: #fff;
}

/* ---------- Section Headers ---------- */
.section-header .view-all {
    color: #0f9f91;
}

.section-header .view-all:hover {
    color: #0b766c;
}

/* ---------- Categories ---------- */
.cat-card {
    border: 1px solid #e3eaf2;
    box-shadow: var(--shadow);
}

.cat-card:hover {
    border-color: rgba(6,182,164,.35);
    background: linear-gradient(180deg, #fff, #f5fffd);
}

.cat-card .icon-wrap {
    background: linear-gradient(135deg, #d9fbf6, #ede9fe);
    color: #0f766e;
}

.cat-card:hover .icon-wrap {
    background: linear-gradient(135deg, #06b6a4, #7c3aed);
    color: #fff;
}

/* ---------- Product Cards ---------- */
.product-card {
    border: 1px solid #e3eaf2;
    box-shadow: var(--shadow);
}

.product-card:hover {
    border-color: rgba(6,182,164,.30);
    box-shadow: var(--shadow-hover);
}

.product-card .img-wrap {
    background: linear-gradient(135deg, #eef4f9, #f7f3ff);
}

.product-card .badge {
    background: linear-gradient(135deg, #06b6a4, #0f766e);
}

.product-card .badge.sale {
    background: linear-gradient(135deg, #a78bfa, #7c3aed);
    color: #fff;
}

.product-card .wish-btn:hover {
    color: #0f766e;
    background: #ecfffc;
}

.product-card.is-favorite .wish-btn {
    color: #e11d48;
    background: #fff1f2;
}

.product-card .footer .add-btn {
    background: #111827;
}

.product-card .footer .add-btn:hover {
    background: linear-gradient(135deg, #06b6a4, #0f766e);
}

/* ---------- Filters ---------- */
.filter-chip {
    border-color: #dce4ee;
}

.filter-chip:hover,
.filter-chip.active {
    background: linear-gradient(135deg, #111827, #26324a);
    border-color: #111827;
}

.sort-select {
    border-color: #dce4ee;
}

/* ---------- Deal ---------- */
.deal-wrap {
    border: 1px solid #e4eaf1;
}

.deal-wrap .deal-content .tag {
    background: #ede9fe;
    color: #6d28d9;
}

.deal-wrap .deal-content .stock strong {
    color: #0f9f91;
}

.timer-box {
    background: linear-gradient(145deg, #111827, #293553);
    border: 1px solid rgba(255,255,255,.08);
}

/* ---------- Testimonials ---------- */
.testimonial-card {
    border: 1px solid #e4eaf1;
}

.testimonials-scroll::-webkit-scrollbar-thumb {
    background: #b9efe8;
}

/* ---------- Newsletter ---------- */
.newsletter-wrap {
    background:
        radial-gradient(circle at 85% 10%, rgba(124,58,237,.30), transparent 18rem),
        radial-gradient(circle at 15% 90%, rgba(6,182,164,.25), transparent 20rem),
        linear-gradient(135deg, #0b1324, #18233b);
}

.newsletter-wrap form .btn {
    background: linear-gradient(135deg, #06b6a4, #0f766e);
    border-color: transparent;
}

/* ---------- Interactive Layers ---------- */
.user-menu {
    border: 1px solid #e4eaf1;
}

.user-menu button:hover {
    background: #edf9f7;
    color: #0f766e;
}

.product-card .quick-view:hover {
    background: linear-gradient(135deg, #06b6a4, #0f766e);
}

.toast {
    background: #111827;
    border: 1px solid rgba(255,255,255,.08);
}

.toast i {
    color: #7de8dd;
}

.scroll-top {
    background: linear-gradient(135deg, #06b6a4, #0f766e);
    box-shadow: 0 12px 30px rgba(6,182,164,.28);
}

.cart-drawer {
    border-left: 1px solid #e4eaf1;
}

.modal-card {
    border: 1px solid #e4eaf1;
}

/* ---------- Dark Mode: Midnight Teal ---------- */
body.dark {
    --bg: #07111f;
    --bg-card: #0f1b2d;
    --primary: #f5f7fb;
    --primary-light: #1b2a42;
    --accent: #2dd4bf;
    --accent-light: #123b3a;
    --accent-dark: #14b8a6;
    --muted: #a8b3c5;
    --muted-light: #718096;
    --surface: #17263c;
    --success: #22c55e;
    --warning: #a78bfa;
    --border: rgba(255,255,255,.09);

    background:
        radial-gradient(circle at 10% 0%, rgba(45,212,191,.11), transparent 22rem),
        radial-gradient(circle at 90% 10%, rgba(167,139,250,.12), transparent 24rem),
        #07111f;
}

body.dark header {
    background: rgba(7,17,31,.76);
    border-bottom-color: rgba(255,255,255,.08);
}

body.dark .search-wrap {
    background: #122138;
}

body.dark .search-wrap:focus-within {
    background: #102038;
}

body.dark nav.main-nav li a:hover,
body.dark nav.main-nav li a.active {
    background: #123b3a;
    color: #b7fff7;
}

body.dark .header-actions .icon-btn:hover {
    background: #123b3a;
    color: #b7fff7;
}

body.dark .cat-card,
body.dark .product-card,
body.dark .deal-wrap,
body.dark .testimonial-card {
    background: #0f1b2d;
    border-color: rgba(255,255,255,.08);
}

body.dark .cat-card:hover,
body.dark .product-card:hover {
    border-color: rgba(45,212,191,.28);
}

body.dark .sort-select,
body.dark .filter-chip,
body.dark .user-menu {
    background: #0f1b2d;
    border-color: rgba(255,255,255,.10);
    color: #f5f7fb;
}

body.dark .filter-chip:hover,
body.dark .filter-chip.active {
    background: #1b2a42;
}

body.dark .modal-card,
body.dark .cart-drawer {
    background: #0f1b2d;
    border-color: rgba(255,255,255,.08);
}

body.dark .cart-item {
    border-color: rgba(255,255,255,.08);
}

body.dark footer {
    border-color: rgba(255,255,255,.08);
}

/* ---------- Mobile ---------- */
@media (max-width: 768px) {
    .hero {
        border-radius: 20px;
    }
    .hero-stats {
        gap: 20px;
    }
}

    </style>
</head>

<body>

    <!-- ===== HEADER ===== -->
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:12px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
                    <em class="fas fa-bars"></em>
                </button>
                <a class="brand" href="#">
                    <em class="fas fa-store-alt"></em>
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Main navigation">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:10px;">
                <div class="search-wrap" role="search">
                    <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
                    <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
                </div>

                <div class="header-actions">
                    <div class="user-menu-wrap">
                        <button class="icon-btn" id="accountBtn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
                        <div class="user-menu" id="userMenu">
                            <button type="button" id="profileAction"><i class="far fa-user"></i> My Profile</button>
                            <button type="button" id="ordersAction"><i class="fas fa-box"></i> My Orders</button>
                            <button type="button" id="signInAction"><i class="fas fa-right-to-bracket"></i> Sign In</button>
                        </div>
                    </div>
                    <button class="icon-btn" id="wishlistBtn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                    <button class="icon-btn theme-btn" id="themeBtn" title="Toggle theme" aria-label="Toggle theme"><i class="fas fa-moon"></i></button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
                            <i class="fas fa-shopping-bag"></i>
                        </button>
                        <span class="cart-count" id="cartCount">0</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Mobile Menu -->
        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                    <li><a href="#"><i class="far fa-user"></i> Account</a></li>
                    <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- ===== MAIN ===== -->
    <main>

        <!-- HERO -->
        <section class="hero" aria-label="Hero banner">
            <div class="container hero-content">
                <div class="eyebrow"><span class="pulse-dot"></span> Live deals · New collection 2026</div>
                <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
                <h1>Discover Premium <br><span class="accent-text">Essentials</span></h1>
                <p>Curated fashion, tech & accessories with free shipping on your first order. Limited-time deals await.</p>
                <div class="actions">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
                    <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
                </div>
                <div class="hero-stats">
                    <div class="hero-stat"><strong>10k+</strong><span>Happy shoppers</span></div>
                    <div class="hero-stat"><strong>4.9/5</strong><span>Average rating</span></div>
                    <div class="hero-stat"><strong>24/7</strong><span>Support</span></div>
                </div>
            </div>
        </section>

        <!-- CATEGORIES -->
        <section class="section" id="categories" aria-labelledby="cat-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="cat-title">Browse Categories</h2>
                        <p>Find exactly what you're looking for</p>
                    </div>
                    <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <section class="section" id="products" aria-labelledby="prod-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="prod-title">Trending Now</h2>
                        <p>What's hot — popular picks from our community</p>
                    </div>
                    <button class="view-all" id="clearFilters" type="button">Reset <i class="fas fa-rotate-left"></i></button>
                </div>
                <div class="filters">
                    <div class="filter-chips" id="filterChips"></div>
                    <select class="sort-select" id="sortSelect" aria-label="Sort products">
                        <option value="featured">Sort: Featured</option>
                        <option value="price-low">Price: Low to High</option>
                        <option value="price-high">Price: High to Low</option>
                        <option value="rating">Top Rated</option>
                        <option value="reviews">Most Reviewed</option>
                    </select>
                </div>
                <div class="results-meta" id="resultsMeta"></div>
                <div class="products-grid" id="productsGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- DEAL -->
        <section class="section" id="deals" aria-labelledby="deals-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="deals-title">⚡ Flash Deal</h2>
                        <p>Grab it before it's gone — limited stock</p>
                    </div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
                        <h3>MacBook Air M2</h3>
                        <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
                        <div>
                            <span class="price-big">$999 <span class="old">$1,199</span></span>
                        </div>
                        <p class="stock">Only <strong>12</strong> items left — hurry!</p>
                        <div class="timer-grid" id="dealTimer">
                            <div class="timer-box">
                                <div class="num" id="dealDays">0</div>
                                <div class="label">Days</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealHours">00</div>
                                <div class="label">Hours</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealMinutes">00</div>
                                <div class="label">Mins</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealSeconds">00</div>
                                <div class="label">Secs</div>
                            </div>
                        </div>
                        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- TESTIMONIALS -->
        <section class="section" id="testimonials" aria-labelledby="test-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="test-title">What Our Customers Say</h2>
                        <p>Real reviews from real people</p>
                    </div>
                </div>
                <div class="testimonials-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <!-- NEWSLETTER -->
        <section class="section" aria-labelledby="news-title">
            <div class="container">
                <div class="newsletter-wrap">
                    <div class="text">
                        <h3 id="news-title">Stay in the Loop</h3>
                        <p>Get exclusive offers, early access & new arrivals</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required />
                        <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                        <div id="newsletterMsg"></div>
                    </form>
                </div>
            </div>
        </section>

    </main>

    <!-- ===== FOOTER ===== -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand-col">
                    <div class="brand">
                        <i class="fas fa-store-alt"></i>
                        <span>Nexus<span class="accent">Shop</span></span>
                    </div>
                    <p>Modern e‑commerce demo built with care. Quality products, seamless experience.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col">
                    <h5>Company</h5>
                    <ul>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Shipping</a></li>
                        <li><a href="#">Returns</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Legal</h5>
                    <ul>
                        <li><a href="#">Privacy</a></li>
                        <li><a href="#">Terms</a></li>
                        <li><a href="#">Cookies</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; <span id="year"></span> NexusShop. All rights reserved.
            </div>
        </div>
    </footer>


    <!-- ===== INTERACTIVE UI ===== -->
    <div class="overlay" id="overlay"></div>

    <aside class="cart-drawer" id="cartDrawer" aria-label="Shopping cart">
        <div class="cart-head">
            <h3>Your Cart <span class="muted" id="cartItemLabel">(0)</span></h3>
            <button class="close-btn" id="closeCart" type="button" aria-label="Close cart"><i class="fas fa-times"></i></button>
        </div>
        <div class="cart-items" id="cartItems"></div>
        <div class="cart-total">
            <div class="cart-total-row"><span>Total</span><span id="cartTotal">$0</span></div>
            <button class="btn btn-primary checkout-btn" id="checkoutBtn" type="button"><i class="fas fa-lock"></i> Secure Checkout</button>
        </div>
    </aside>

    <div class="modal" id="quickModal" role="dialog" aria-modal="true" aria-label="Product details">
        <div class="modal-card modal-shell" id="quickModalCard"></div>
    </div>

    <div class="toast" id="toast" role="status" aria-live="polite"></div>
    <button class="scroll-top" id="scrollTop" type="button" aria-label="Back to top"><i class="fas fa-arrow-up"></i></button>

    <!-- ===== SCRIPT ===== -->
    <script>
const CATEGORIES = [
 {id:'all',name:'All',icon:'fa-border-all',count:8},
 {id:'phones',name:'Smartphones',icon:'fa-mobile-alt',count:24},
 {id:'laptops',name:'Laptops',icon:'fa-laptop',count:18},
 {id:'clothing',name:'Clothing',icon:'fa-tshirt',count:42},
 {id:'gadgets',name:'Gadgets',icon:'fa-headphones',count:31},
 {id:'footwear',name:'Footwear',icon:'fa-shoe-prints',count:27},
 {id:'accessories',name:'Accessories',icon:'fa-watch',count:39}
];
const PRODUCTS = [
 {id:1,title:'iPhone 14 Pro Max',price:1099,oldPrice:1199,rating:5,reviews:128,badge:'New',img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85',category:'Smartphones'},
 {id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,badge:'',img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85',category:'Laptops'},
 {id:3,title:'Apple Watch Series 8',price:349,oldPrice:399,rating:5,reviews:214,badge:'Sale',img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85',category:'Accessories'},
 {id:4,title:'Nike Air Max 270',price:150,rating:4,reviews:53,badge:'',img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85',category:'Footwear'},
 {id:5,title:'Sony A7 IV Camera',price:2499,rating:5,reviews:42,badge:'New',img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85',category:'Gadgets'},
 {id:6,title:'Chanel No. 5',price:120,rating:5,reviews:189,badge:'',img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85',category:'Accessories'},
 {id:7,title:'Travel Backpack',price:79,oldPrice:99,rating:4,reviews:67,badge:'Sale',img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85',category:'Accessories'},
 {id:8,title:'Sony WH-1000XM5',price:399,rating:5,reviews:156,badge:'',img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85',category:'Gadgets'}
];
const TESTIMONIALS=[
 {name:'Ava Martin',role:'Verified Buyer',avatar:'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',text:'Fast shipping and excellent support. The product exceeded my expectations!',stars:5},
 {name:'Michael Lee',role:'Frequent Shopper',avatar:'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',text:'Great selection and smooth checkout. Will definitely shop again.',stars:4},
 {name:'Sophia Chen',role:'Designer',avatar:'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',text:'Love the quality and the packaging. Everything arrived in perfect condition.',stars:5},
 {name:'James Wilson',role:'Tech Enthusiast',avatar:'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',text:'Amazing prices on electronics. The M2 MacBook deal was unbeatable.',stars:5}
];

CATEGORIES[0].count=PRODUCTS.length;
let cart=[];
let wishlist=new Set();
let activeCategory='all';
let searchQuery='';
let toastTimer;

const $=s=>document.querySelector(s);
const $$=s=>[...document.querySelectorAll(s)];
const money=n=>'$'+Number(n).toLocaleString();
const escapeHtml=t=>String(t).replace(/[&<>"']/g,s=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s]));

function toast(message,icon='fa-check-circle'){
 const el=$('#toast'); el.innerHTML=`<i class="fas ${icon}"></i><span>${escapeHtml(message)}</span>`;
 el.classList.add('show'); clearTimeout(toastTimer); toastTimer=setTimeout(()=>el.classList.remove('show'),2400);
}
function updateCartBadge(){
 const count=cart.reduce((sum,i)=>sum+i.qty,0), badge=$('#cartCount');
 badge.textContent=count; badge.style.transform='scale(1.25)'; setTimeout(()=>badge.style.transform='',180);
 $('#cartItemLabel').textContent=`(${count})`;
}
function addToCart(id,btn){
 const p=PRODUCTS.find(x=>x.id===id); if(!p)return;
 const item=cart.find(x=>x.id===id);
 if(item)item.qty++; else cart.push({id,qty:1});
 updateCartBadge(); renderCart(); toast(`${p.title} added to cart`);
 if(btn){const old=btn.innerHTML;btn.innerHTML='<i class="fas fa-check"></i> Added';btn.classList.add('added');setTimeout(()=>{btn.innerHTML=old;btn.classList.remove('added')},1300)}
}
function changeQty(id,delta){
 const item=cart.find(x=>x.id===id); if(!item)return;
 item.qty+=delta; if(item.qty<=0)cart=cart.filter(x=>x.id!==id);
 updateCartBadge();renderCart();
}
function renderCart(){
 const box=$('#cartItems');
 if(!cart.length){box.innerHTML='<div class="cart-empty"><i class="fas fa-bag-shopping"></i><h3>Your cart is empty</h3><p>Add something you love and it will appear here.</p></div>';$('#cartTotal').textContent='$0';return}
 box.innerHTML=cart.map(i=>{
  const p=PRODUCTS.find(x=>x.id===i.id);
  return `<div class="cart-item">
    <img src="${p.img}" alt="${escapeHtml(p.title)}">
    <div><h4>${escapeHtml(p.title)}</h4><div class="small">${money(p.price)} each</div>
      <div class="qty"><button type="button" data-qty="-1" data-id="${p.id}">−</button><strong>${i.qty}</strong><button type="button" data-qty="1" data-id="${p.id}">+</button></div>
      <button class="remove-item" type="button" data-remove="${p.id}">Remove</button>
    </div><strong>${money(p.price*i.qty)}</strong>
  </div>`
 }).join('');
 $('#cartTotal').textContent=money(cart.reduce((s,i)=>s+PRODUCTS.find(p=>p.id===i.id).price*i.qty,0));
 box.querySelectorAll('[data-qty]').forEach(b=>b.onclick=()=>changeQty(Number(b.dataset.id),Number(b.dataset.qty)));
 box.querySelectorAll('[data-remove]').forEach(b=>b.onclick=()=>{cart=cart.filter(i=>i.id!==Number(b.dataset.remove));updateCartBadge();renderCart()});
}
function openCart(){renderCart();$('#cartDrawer').classList.add('open');$('#overlay').classList.add('show')}
function closePanels(){$('#cartDrawer').classList.remove('open');$('#quickModal').classList.remove('open');$('#overlay').classList.remove('show')}
function toggleWishlist(id){
 if(wishlist.has(id)){wishlist.delete(id);toast('Removed from wishlist','fa-heart-crack')}else{wishlist.add(id);toast('Saved to wishlist','fa-heart')}
 renderProducts();
}
function filteredProducts(){
 let list=PRODUCTS.filter(p=>
  (activeCategory==='all'||p.category.toLowerCase()===activeCategory.toLowerCase()) &&
  (!searchQuery||`${p.title} ${p.category}`.toLowerCase().includes(searchQuery))
 );
 const sort=$('#sortSelect').value;
 if(sort==='price-low')list.sort((a,b)=>a.price-b.price);
 if(sort==='price-high')list.sort((a,b)=>b.price-a.price);
 if(sort==='rating')list.sort((a,b)=>b.rating-a.rating||b.reviews-a.reviews);
 if(sort==='reviews')list.sort((a,b)=>b.reviews-a.reviews);
 return list;
}
function renderFilters(){
 const box=$('#filterChips');
 box.innerHTML=CATEGORIES.map(c=>`<button type="button" class="filter-chip ${activeCategory===c.id?'active':''}" data-cat="${c.id}">${c.name}</button>`).join('');
 box.querySelectorAll('[data-cat]').forEach(b=>b.onclick=()=>{activeCategory=b.dataset.cat;renderFilters();renderProducts();document.querySelector('#products').scrollIntoView({behavior:'smooth',block:'start'})});
}
function renderProducts(){
 const list=filteredProducts(), grid=$('#productsGrid');
 $('#resultsMeta').textContent=`Showing ${list.length} of ${PRODUCTS.length} products${searchQuery?` for “${searchQuery}”`:''}`;
 if(!list.length){grid.innerHTML='<div class="empty-state"><i class="fas fa-magnifying-glass"></i><h3>No products found</h3><p>Try another search or reset your filters.</p></div>';return}
 grid.innerHTML=list.map(p=>{
  const fav=wishlist.has(p.id), badge=p.badge?`<span class="badge ${p.badge==='Sale'?'sale':''}">${p.badge}</span>`:'';
  const stars='★'.repeat(p.rating)+'☆'.repeat(5-p.rating);
  return `<article class="product-card ${fav?'is-favorite':''}">
    <div class="img-wrap"><img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">${badge}
      <button class="wish-btn" type="button" data-wish="${p.id}" aria-label="${fav?'Remove from wishlist':'Add to wishlist'}"><i class="${fav?'fas':'far'} fa-heart"></i></button>
    </div>
    <button class="quick-view" type="button" data-quick="${p.id}"><i class="fas fa-eye"></i> Quick View</button>
    <div class="body"><div class="category-tag">${p.category}</div><h5>${escapeHtml(p.title)}</h5>
      <div class="price-row"><span class="price">${money(p.price)}</span>${p.oldPrice?`<span class="old-price">${money(p.oldPrice)}</span>`:''}</div>
      <div class="rating">${stars} <span>(${p.reviews})</span></div>
    </div>
    <div class="footer"><button class="add-btn" type="button" data-add="${p.id}"><i class="fas fa-cart-plus"></i> Add to Cart</button></div>
  </article>`
 }).join('');
 grid.querySelectorAll('[data-add]').forEach(b=>b.onclick=()=>addToCart(Number(b.dataset.add),b));
 grid.querySelectorAll('[data-wish]').forEach(b=>b.onclick=()=>toggleWishlist(Number(b.dataset.wish)));
 grid.querySelectorAll('[data-quick]').forEach(b=>b.onclick=()=>openQuickView(Number(b.dataset.quick)));
}
function openQuickView(id){
 const p=PRODUCTS.find(x=>x.id===id);if(!p)return;
 $('#quickModalCard').innerHTML=`<button class="close-btn modal-close" id="closeQuick" type="button" aria-label="Close"><i class="fas fa-times"></i></button>
 <div class="quick-modal-grid"><img src="${p.img}" alt="${escapeHtml(p.title)}"><div class="quick-info">
 <div class="category-tag">${p.category}</div><h2>${escapeHtml(p.title)}</h2><div class="rating">${'★'.repeat(p.rating)}${'☆'.repeat(5-p.rating)} <span class="muted">(${p.reviews} reviews)</span></div>
 <div class="price">${money(p.price)} ${p.oldPrice?`<span class="old-price">${money(p.oldPrice)}</span>`:''}</div>
 <p>Designed for everyday performance and a premium experience. Add it to your cart or save it for later.</p>
 <button class="btn btn-primary" id="modalAdd"><i class="fas fa-cart-plus"></i> Add to Cart</button></div></div>`;
 $('#quickModal').classList.add('open');$('#overlay').classList.add('show');
 $('#closeQuick').onclick=closePanels;$('#modalAdd').onclick=()=>{addToCart(p.id);closePanels();openCart()};
}
function renderCategories(){
 const grid=$('#categoriesGrid');
 grid.innerHTML=CATEGORIES.filter(c=>c.id!=='all').map(c=>`<button type="button" class="cat-card" data-category="${c.id}" aria-label="Browse ${c.name}">
 <div class="icon-wrap"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4><div class="count">${c.count} items</div></button>`).join('');
 grid.querySelectorAll('[data-category]').forEach(b=>b.onclick=()=>{activeCategory=b.dataset.category;searchQuery='';$('#searchInput').value='';renderFilters();renderProducts();$('#products').scrollIntoView({behavior:'smooth'})});
}
function renderTestimonials(){
 $('#testimonialsList').innerHTML=TESTIMONIALS.map(t=>`<div class="testimonial-card"><div class="stars">${'★'.repeat(t.stars)}${'☆'.repeat(5-t.stars)}</div><blockquote>“${escapeHtml(t.text)}”</blockquote><div class="author"><img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}"><div><div class="name">${escapeHtml(t.name)}</div><div class="role">${escapeHtml(t.role)}</div></div></div></div>`).join('');
}
function searchProducts(q){
 searchQuery=String(q||'').trim().toLowerCase();activeCategory='all';renderFilters();renderProducts();
}
function setupTimer(){
 const target=Date.now()+((24*60+36)*60*1000);
 const tick=()=>{let d=Math.max(0,target-Date.now()),days=Math.floor(d/86400000),h=Math.floor(d%86400000/3600000),m=Math.floor(d%3600000/60000),s=Math.floor(d%60000/1000);
  $('#dealDays').textContent=days;$('#dealHours').textContent=String(h).padStart(2,'0');$('#dealMinutes').textContent=String(m).padStart(2,'0');$('#dealSeconds').textContent=String(s).padStart(2,'0')};
 tick();setInterval(tick,1000);
}
function setupReveal(){
 const els=$$('.section,.hero,.deal-wrap,.newsletter-wrap,.footer-grid');
 els.forEach(el=>el.classList.add('reveal'));
 if(!('IntersectionObserver' in window)){els.forEach(el=>el.classList.add('visible'));return}
 const io=new IntersectionObserver(entries=>entries.forEach(e=>{if(e.isIntersecting){e.target.classList.add('visible');io.unobserve(e.target)}}),{threshold:.08});
 els.forEach(el=>io.observe(el));
}
function init(){
 renderCategories();renderFilters();renderProducts();renderTestimonials();updateCartBadge();setupTimer();setupReveal();
 $('#year').textContent=new Date().getFullYear();

 $('#searchBtn').onclick=()=>searchProducts($('#searchInput').value);
 $('#searchInput').oninput=e=>{if(e.target.value==='')searchProducts('')};
 $('#searchInput').onkeydown=e=>{if(e.key==='Enter')searchProducts(e.target.value)};
 $('#sortSelect').onchange=renderProducts;
 $('#clearFilters').onclick=()=>{searchQuery='';activeCategory='all';$('#searchInput').value='';$('#sortSelect').value='featured';renderFilters();renderProducts();toast('Filters reset','fa-rotate-left')};

 $('#shopNow').onclick=()=>$('#products').scrollIntoView({behavior:'smooth'});
 $('#exploreDeals').onclick=()=>$('#deals').scrollIntoView({behavior:'smooth'});
 $('#buyDeal').onclick=()=>{addToCart(2);openCart()};

 $('#cartBtn').onclick=openCart;$('#closeCart').onclick=closePanels;$('#overlay').onclick=closePanels;
 $('#checkoutBtn').onclick=()=>cart.length?toast('Checkout is ready to connect to your payment gateway.','fa-lock'):toast('Your cart is empty','fa-bag-shopping');

 $('#wishlistBtn').onclick=()=>{const fav=PRODUCTS.filter(p=>wishlist.has(p.id));if(!fav.length){toast('Your wishlist is empty','fa-heart');return}searchQuery='';activeCategory='all';renderFilters();$('#productsGrid').innerHTML='';const original=PRODUCTS;const list=fav;$('#resultsMeta').textContent=`${list.length} saved item${list.length!==1?'s':''}`; // render favorites only
 const grid=$('#productsGrid');grid.innerHTML=list.map(p=>`<article class="product-card is-favorite"><div class="img-wrap"><img src="${p.img}" alt="${escapeHtml(p.title)}"><button class="wish-btn" data-wish="${p.id}" type="button"><i class="fas fa-heart"></i></button></div><div class="body"><div class="category-tag">${p.category}</div><h5>${escapeHtml(p.title)}</h5><div class="price-row"><span class="price">${money(p.price)}</span></div></div><div class="footer"><button class="add-btn" data-add="${p.id}" type="button"><i class="fas fa-cart-plus"></i> Add to Cart</button></div></article>`).join('');
 grid.querySelectorAll('[data-add]').forEach(b=>b.onclick=()=>addToCart(Number(b.dataset.add),b));grid.querySelectorAll('[data-wish]').forEach(b=>b.onclick=()=>toggleWishlist(Number(b.dataset.wish)));
 $('#products').scrollIntoView({behavior:'smooth'});
 };

 $('#accountBtn').onclick=e=>{e.stopPropagation();$('#userMenu').classList.toggle('open')};
 document.addEventListener('click',e=>{if(!e.target.closest('.user-menu-wrap'))$('#userMenu').classList.remove('open')});
 $('#profileAction').onclick=()=>toast('Profile page is ready for your authentication flow','fa-user');
 $('#ordersAction').onclick=()=>toast('Orders page is ready to connect to your backend','fa-box');
 $('#signInAction').onclick=()=>toast('Connect this button to your JWT login page','fa-right-to-bracket');

 $('#themeBtn').onclick=()=>{document.body.classList.toggle('dark');const dark=document.body.classList.contains('dark');$('#themeBtn').innerHTML=`<i class="fas fa-${dark?'sun':'moon'}"></i>`;toast(`${dark?'Dark':'Light'} mode enabled`,dark?'fa-sun':'fa-moon')};

 $('#mobileToggle').onclick=()=>{const menu=$('#mobileMenu'),open=menu.style.display==='block';menu.style.display=open?'none':'block';$('#mobileToggle').innerHTML=`<i class="fas fa-${open?'bars':'times'}"></i>`};
 $('#mobileMenu').querySelectorAll('a').forEach(a=>a.onclick=()=>{$('#mobileMenu').style.display='none';$('#mobileToggle').innerHTML='<i class="fas fa-bars"></i>'});

 $('#newsletterForm').onsubmit=e=>{e.preventDefault();const email=$('#newsletterEmail').value.trim();const msg=$('#newsletterMsg');if(!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)){msg.textContent='Please enter a valid email address.';msg.style.color='#ffb3b3';return}msg.textContent='🎉 You are subscribed!';msg.style.color='#a8e6cf';$('#newsletterEmail').value='';setTimeout(()=>msg.textContent='',3000)};

 $('#scrollTop').onclick=()=>window.scrollTo({top:0,behavior:'smooth'});
 window.addEventListener('scroll',()=>$('#scrollTop').classList.toggle('show',window.scrollY>500));
 window.addEventListener('keydown',e=>{if(e.key==='Escape')closePanels()});
 window.addEventListener('resize',()=>{if(window.innerWidth>768){$('#mobileMenu').style.display='none';$('#mobileToggle').innerHTML='<i class="fas fa-bars"></i>'}});
}
init();
</script>

</body>
</html>
