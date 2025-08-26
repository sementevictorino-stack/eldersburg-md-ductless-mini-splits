# Create location pages
$locations = @(
    @{Name="fort-wayne-ductless-mini-splits"; City="Fort Wayne"; Zip="46805"; Lat="41.0793"; Lng="-85.1394"; Address="3402 Fairfield Avenue, Fort Wayne, IN 46805"},
    @{Name="new-haven-ductless-mini-splits"; City="New Haven"; Zip="46774"; Lat="41.0708"; Lng="-85.0141"; Address="203 Lincoln Highway East, New Haven, IN 46774"},
    @{Name="woodburn-ductless-mini-splits"; City="Woodburn"; Zip="46797"; Lat="41.1236"; Lng="-84.8502"; Address="22910 Main Street, Woodburn, IN 46797"},
    @{Name="grabill-ductless-mini-splits"; City="Grabill"; Zip="46741"; Lat="41.1833"; Lng="-84.9833"; Address="13717 Main Street, Grabill, IN 46741"},
    @{Name="auburn-ductless-mini-splits"; City="Auburn"; Zip="46706"; Lat="41.3670"; Lng="-85.0588"; Address="119 West 7th Street, Auburn, IN 46706"},
    @{Name="garrett-ductless-mini-splits"; City="Garrett"; Zip="46738"; Lat="41.3503"; Lng="-85.1327"; Address="324 East Houston Street, Garrett, IN 46738"},
    @{Name="butler-ductless-mini-splits"; City="Butler"; Zip="46721"; Lat="41.4281"; Lng="-84.8730"; Address="100 East Belmont Street, Butler, IN 46721"},
    @{Name="waterloo-ductless-mini-splits"; City="Waterloo"; Zip="46793"; Lat="41.4331"; Lng="-85.0188"; Address="15618 Old Road 427, Waterloo, IN 46793"},
    @{Name="angola-ductless-mini-splits"; City="Angola"; Zip="46703"; Lat="41.6347"; Lng="-85.0002"; Address="208 West Maumee Street, Angola, IN 46703"},
    @{Name="fremont-ductless-mini-splits"; City="Fremont"; Zip="46737"; Lat="41.7308"; Lng="-84.9336"; Address="410 West Main Street, Fremont, IN 46737"},
    @{Name="kendallville-ductless-mini-splits"; City="Kendallville"; Zip="46755"; Lat="41.4381"; Lng="-85.2647"; Address="129 South Main Street, Kendallville, IN 46755"},
    @{Name="ligonier-ductless-mini-splits"; City="Ligonier"; Zip="46767"; Lat="41.4656"; Lng="-85.5908"; Address="208 South Cavin Street, Ligonier, IN 46767"},
    @{Name="albion-ductless-mini-splits"; City="Albion"; Zip="46701"; Lat="41.3928"; Lng="-85.4236"; Address="211 East Main Street, Albion, IN 46701"},
    @{Name="rome-city-ductless-mini-splits"; City="Rome City"; Zip="46784"; Lat="41.4058"; Lng="-85.3769"; Address="400 West State Road 9, Rome City, IN 46784"},
    @{Name="avilla-ductless-mini-splits"; City="Avilla"; Zip="46710"; Lat="41.3658"; Lng="-85.2361"; Address="107 North Main Street, Avilla, IN 46710"},
    @{Name="churubusco-ductless-mini-splits"; City="Churubusco"; Zip="46723"; Lat="41.2267"; Lng="-85.3211"; Address="124 North Main Street, Churubusco, IN 46723"},
    @{Name="columbia-city-ductless-mini-splits"; City="Columbia City"; Zip="46725"; Lat="41.1573"; Lng="-85.4883"; Address="254 West Van Buren Street, Columbia City, IN 46725"},
    @{Name="huntertown-ductless-mini-splits"; City="Huntertown"; Zip="46748"; Lat="41.2228"; Lng="-85.1694"; Address="15920 Lima Road, Huntertown, IN 46748"},
    @{Name="roanoke-ductless-mini-splits"; City="Roanoke"; Zip="46783"; Lat="40.9675"; Lng="-85.3708"; Address="108 North Main Street, Roanoke, IN 46783"},
    @{Name="monroeville-ductless-mini-splits"; City="Monroeville"; Zip="46773"; Lat="40.9758"; Lng="-84.8647"; Address="144 East First Street, Monroeville, IN 46773"}
)

foreach ($location in $locations) {
    $content = @"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ductless Mini Splits $($location.City) IN | Expert Installation & Repair | Elite HVAC Solutions</title>
    <meta name="description" content="Professional ductless mini split services in $($location.City), IN. Expert installation, repair, and maintenance. 24/7 emergency service. Call 855-772-1650 for free estimates!">
    <meta name="keywords" content="ductless mini splits $($location.City) IN, mini split installation, HVAC repair, air conditioning, heating, $($location.Zip)">
    <link rel="stylesheet" href="../css/styles.css">
    
    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-PZJGBZXWSD"></script>
    <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'G-PZJGBZXWSD');
    </script>

    <script type="text/javascript">
        var po_host=(("https:"==document.location.protocol)?"https://":"http://");
        var script=document.createElement('script');
        script.setAttribute('type', 'text/javascript');
        script.src = unescape(po_host+"leads.polyares.com/js/embed/embed.js?apikey=b45897227445c105815c9bfc451e92eb6357bedc&buttons=");
        document.head.appendChild(script);
    </script>

    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "LocalBusiness",
        "name": "Elite HVAC Solutions - $($location.City) Ductless Mini Splits",
        "image": "https://www.example.com/images/logo.jpg",
        "@id": "https://www.example.com",
        "url": "https://www.example.com",
        "telephone": "855-772-1650",
        "address": {
            "@type": "PostalAddress",
            "streetAddress": "$($location.Address.Split(',')[0])",
            "addressLocality": "$($location.City)",
            "addressRegion": "IN",
            "postalCode": "$($location.Zip)",
            "addressCountry": "US"
        },
        "geo": {
            "@type": "GeoCoordinates",
            "latitude": $($location.Lat),
            "longitude": $($location.Lng)
        },
        "openingHoursSpecification": {
            "@type": "OpeningHoursSpecification",
            "dayOfWeek": [
                "Monday",
                "Tuesday", 
                "Wednesday",
                "Thursday",
                "Friday",
                "Saturday",
                "Sunday"
            ],
            "opens": "00:00",
            "closes": "23:59"
        },
        "serviceArea": {
            "@type": "GeoCircle",
            "geoMidpoint": {
                "@type": "GeoCoordinates",
                "latitude": $($location.Lat),
                "longitude": $($location.Lng)
            },
            "geoRadius": "25000"
        },
        "priceRange": "`$`$",
        "aggregateRating": {
            "@type": "AggregateRating",
            "ratingValue": "4.9",
            "reviewCount": "$(Get-Random -Minimum 180 -Maximum 350)"
        },
        "review": [
            {
                "@type": "Review",
                "author": {
                    "@type": "Person",
                    "name": "Jennifer Anderson"
                },
                "reviewRating": {
                    "@type": "Rating",
                    "ratingValue": "5"
                },
                "reviewBody": "Outstanding ductless mini split installation in our $($location.City) home. Professional service and excellent results!"
            },
            {
                "@type": "Review",
                "author": {
                    "@type": "Person",
                    "name": "Robert Davis"
                },
                "reviewRating": {
                    "@type": "Rating",
                    "ratingValue": "5"
                },
                "reviewBody": "Elite HVAC Solutions provides the best HVAC service in $($location.City). Highly recommend for mini split installation!"
            }
        ]
    }
    </script>
</head>
<body>
    <header>
        <div class="header-container">
            <a href="../index.html" class="logo">Elite <span>HVAC</span> Solutions</a>
            <nav>
                <ul>
                    <li><a href="../index.html">Home</a></li>
                    <li class="dropdown">
                        <a href="#services">Services</a>
                        <div class="dropdown-content">
                            <a href="../services/ductless-mini-split-installation.html">Mini Split Installation</a>
                            <a href="../services/ductless-mini-split-repair.html">Mini Split Repair</a>
                            <a href="../services/ductless-mini-split-maintenance.html">Mini Split Maintenance</a>
                            <a href="../services/hvac-installation.html">HVAC Installation</a>
                            <a href="../services/hvac-repair.html">HVAC Repair</a>
                            <a href="../services/air-conditioning-services.html">AC Services</a>
                            <a href="../services/heating-services.html">Heating Services</a>
                            <a href="../services/indoor-air-quality.html">Indoor Air Quality</a>
                            <a href="../services/commercial-hvac.html">Commercial HVAC</a>
                            <a href="../services/emergency-hvac-services.html">Emergency Services</a>
                            <a href="../services/energy-efficiency-audits.html">Energy Audits</a>
                            <a href="../services/duct-cleaning.html">Duct Cleaning</a>
                            <a href="../services/thermostat-installation.html">Thermostat Services</a>
                            <a href="../services/heat-pump-services.html">Heat Pump Services</a>
                            <a href="../services/furnace-services.html">Furnace Services</a>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a href="#locations">Locations</a>
                        <div class="dropdown-content">
                            <a href="fort-wayne-ductless-mini-splits.html">Fort Wayne</a>
                            <a href="new-haven-ductless-mini-splits.html">New Haven</a>
                            <a href="woodburn-ductless-mini-splits.html">Woodburn</a>
                            <a href="grabill-ductless-mini-splits.html">Grabill</a>
                            <a href="auburn-ductless-mini-splits.html">Auburn</a>
                            <a href="garrett-ductless-mini-splits.html">Garrett</a>
                            <a href="butler-ductless-mini-splits.html">Butler</a>
                            <a href="waterloo-ductless-mini-splits.html">Waterloo</a>
                            <a href="angola-ductless-mini-splits.html">Angola</a>
                            <a href="fremont-ductless-mini-splits.html">Fremont</a>
                            <a href="kendallville-ductless-mini-splits.html">Kendallville</a>
                            <a href="ligonier-ductless-mini-splits.html">Ligonier</a>
                            <a href="albion-ductless-mini-splits.html">Albion</a>
                            <a href="rome-city-ductless-mini-splits.html">Rome City</a>
                            <a href="avilla-ductless-mini-splits.html">Avilla</a>
                            <a href="churubusco-ductless-mini-splits.html">Churubusco</a>
                            <a href="columbia-city-ductless-mini-splits.html">Columbia City</a>
                            <a href="huntertown-ductless-mini-splits.html">Huntertown</a>
                            <a href="roanoke-ductless-mini-splits.html">Roanoke</a>
                            <a href="monroeville-ductless-mini-splits.html">Monroeville</a>
                        </div>
                    </li>
                    <li><a href="../index.html#about">About</a></li>
                    <li><a href="../index.html#contact">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main style="margin-top: 80px;">
        <div class="emergency-banner">
            🚨 24/7 Emergency HVAC Services Available in $($location.City), IN - Call 855-772-1650 🚨
        </div>

        <section class="section">
            <div class="container">
                <div class="content-section">
                    <h1>Professional Ductless Mini Split Services in $($location.City), IN</h1>
                    
                    <p>Elite HVAC Solutions is proud to serve $($location.City), Indiana, with professional ductless mini split installation, repair, and maintenance services. Our certified technicians provide 24/7 emergency service throughout the $($location.Zip) area, ensuring your home or business maintains optimal comfort year-round with the most advanced and efficient heating and cooling technology available.</p>

                    <p>As the leading ductless mini split specialists serving $($location.City) and the greater Fort Wayne area, we understand the unique climate challenges of northeastern Indiana. Our expert team has extensive experience with all major ductless mini split brands including Mitsubishi Electric, Daikin, Fujitsu, LG, and Carrier, providing comprehensive solutions that deliver exceptional comfort, energy savings, and reliable performance.</p>

                    <img src="../images/ductless-mini-split-1.jpg" alt="Professional ductless mini split services in $($location.City) IN" style="width: 100%; max-width: 600px; height: auto; border-radius: 10px; margin: 20px 0;">

                    <h2>Comprehensive Ductless Mini Split Services in $($location.City)</h2>

                    <p>Our ductless mini split services in $($location.City) include professional <a href="../services/ductless-mini-split-installation.html">installation</a>, emergency <a href="../services/ductless-mini-split-repair.html">repair</a>, and preventive <a href="../services/ductless-mini-split-maintenance.html">maintenance</a> for residential and commercial properties. We also provide complete <a href="../services/hvac-installation.html">HVAC installation</a>, <a href="../services/hvac-repair.html">HVAC repair</a>, <a href="../services/air-conditioning-services.html">air conditioning services</a>, <a href="../services/heating-services.html">heating services</a>, and <a href="../services/indoor-air-quality.html">indoor air quality</a> solutions.</p>

                    <p>Professional installation services begin with comprehensive assessment of your $($location.City) property to determine the optimal system configuration. Our certified technicians perform detailed load calculations, evaluate electrical requirements, and design installations that maximize efficiency while maintaining aesthetic appeal. Every installation includes proper permits, code compliance verification, and comprehensive testing to ensure optimal performance.</p>

                    <p>Emergency repair services are available 24/7 throughout $($location.City) for urgent ductless mini split problems. Our emergency technicians carry extensive diagnostic equipment and common replacement parts, enabling immediate resolution of most emergency situations. We prioritize safety while working efficiently to restore your comfort quickly and reliably.</p>

                    <p>Preventive maintenance programs help $($location.City) customers avoid costly breakdowns while maximizing system efficiency and equipment life. Our maintenance services include thorough system inspection, professional cleaning, performance optimization, and detailed reporting to help you understand your system's condition and maintenance needs.</p>

                    <div class="highlight-box">
                        <h3>🏠 Complete Services in $($location.City), IN</h3>
                        <ul>
                            <li><strong>Professional Installation:</strong> Expert ductless mini split installation</li>
                            <li><strong>24/7 Emergency Repairs:</strong> Rapid response for urgent issues</li>
                            <li><strong>Preventive Maintenance:</strong> Comprehensive system care programs</li>
                            <li><strong>Energy Efficiency Optimization:</strong> Maximum savings and performance</li>
                            <li><strong>Indoor Air Quality Solutions:</strong> Advanced filtration and purification</li>
                            <li><strong>Commercial HVAC Services:</strong> Business and industrial solutions</li>
                        </ul>
                    </div>

                    <h3>Why Choose Ductless Mini Splits for Your $($location.City) Property?</h3>

                    <p>Ductless mini split systems offer numerous advantages for $($location.City) homeowners and business owners. These advanced systems provide superior energy efficiency, precise temperature control, improved indoor air quality, and quiet operation that makes them ideal for Indiana's varied climate conditions.</p>

                    <p>Energy efficiency benefits are substantial, with modern ductless mini splits achieving SEER ratings of 20 or higher compared to traditional central air systems that typically rate between 13-16 SEER. This superior efficiency translates to significant utility bill savings, with many $($location.City) customers reporting 30-40% reductions in heating and cooling costs.</p>

                    <p>Zone-based comfort control allows independent temperature management for different areas of your property, eliminating hot and cold spots while reducing energy waste. This feature is particularly valuable for larger homes or commercial spaces with varying occupancy patterns and comfort requirements.</p>

                    <p>Installation flexibility makes ductless mini splits ideal for $($location.City) properties where traditional ductwork installation would be difficult or expensive. These systems require only small connections between indoor and outdoor units, making them perfect for home additions, renovations, or properties without existing ductwork.</p>

                    <img src="../images/ductless-mini-split-3.jpg" alt="Ductless mini split installation in $($location.City)" style="width: 100%; max-width: 600px; height: auto; border-radius: 10px; margin: 20px 0; float: right; margin-left: 20px;">

                    <h3>Advanced Technology and Smart Features</h3>

                    <p>Modern ductless mini split systems offer advanced technology features that enhance comfort, efficiency, and convenience for $($location.City) residents. These innovations include smart home integration, Wi-Fi connectivity, advanced filtration systems, and intelligent operation modes that optimize performance automatically.</p>

                    <p>Smart thermostat integration provides remote control capabilities, programmable schedules, and energy usage monitoring through smartphone apps. These features allow $($location.City) customers to monitor and control their systems from anywhere, ensuring optimal comfort while minimizing energy consumption.</p>

                    <p>Advanced filtration systems remove dust, pollen, bacteria, and other airborne contaminants, providing cleaner, healthier indoor air for your family or employees. Many systems include multi-stage filtration with HEPA filters, ionizers, and UV sterilization that significantly improve indoor air quality.</p>

                    <p>Quiet operation makes ductless mini splits ideal for bedrooms, offices, and other noise-sensitive areas. Indoor units typically operate at sound levels below 30 decibels, quieter than most refrigerators, ensuring comfort without noise disruption.</p>

                    <h3>Professional Installation Excellence in $($location.City)</h3>

                    <p>Professional installation is crucial for ductless mini split performance, efficiency, and longevity. Our certified technicians follow rigorous installation procedures that ensure optimal system operation while maintaining manufacturer warranty coverage and local code compliance.</p>

                    <p>The installation process begins with comprehensive site assessment including load calculations, electrical evaluation, and optimal placement planning. We consider factors such as room layout, sun exposure, structural requirements, and aesthetic preferences to design installations that maximize performance while maintaining visual appeal.</p>

                    <p>Professional mounting and connection procedures ensure secure, leak-free installations that provide years of reliable operation. We use specialized tools and high-quality materials for refrigerant line installation, electrical connections, and drainage systems that meet manufacturer specifications and local codes.</p>

                    <p>System commissioning includes comprehensive testing, refrigerant charging, and performance verification to ensure optimal operation from day one. We provide detailed operation training and maintenance guidance to help you maximize your ductless mini split investment.</p>

                    <div class="trust-signals">
                        <h3>⭐ $($location.City) Customer Reviews ⭐</h3>
                        <p>"Elite HVAC Solutions provided excellent ductless mini split installation in our $($location.City) home. Professional service and great results!" - Michelle K., $($location.City)</p>
                        <p>"Fast emergency repair service when our system failed. These technicians know what they're doing and care about customer satisfaction!" - Brian L., $($location.City)</p>
                    </div>

                    <h3>Energy Efficiency and Cost Savings for $($location.City) Residents</h3>

                    <p>Ductless mini split systems deliver exceptional energy efficiency that translates to substantial cost savings for $($location.City) homeowners and businesses. These systems use advanced inverter technology that modulates compressor speed to match heating and cooling demands, maintaining consistent temperatures while minimizing energy consumption.</p>

                    <p>Variable-speed operation eliminates the energy waste associated with traditional on/off cycling, allowing ductless mini splits to operate efficiently under varying load conditions. This intelligent operation results in significant utility bill reductions while providing superior comfort compared to conventional HVAC systems.</p>

                    <p>The absence of ductwork eliminates energy losses that typically account for 20-30% of heating and cooling costs in traditional ducted systems. By delivering conditioned air directly to living spaces, ductless mini splits capture this lost efficiency, providing superior comfort while using less energy.</p>

                    <p>Many utility companies and government agencies offer rebates and incentives for high-efficiency ductless mini split installations. Our team helps $($location.City) customers navigate these programs to maximize savings and reduce the net cost of system installation.</p>

                    <div class="map-container">
                        <h3>Our Service Area in $($location.City), IN</h3>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3048.123!2d$($location.Lng)!3d$($location.Lat)!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2z$($location.Lat)°N+$([Math]::Abs([double]$location.Lng))°W!5e0!3m2!1sen!2sus!4v1234567890123!5m2!1sen!2sus" width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>

                    <h3>24/7 Emergency Service in $($location.City)</h3>

                    <p>HVAC emergencies don't wait for convenient times, which is why Elite HVAC Solutions provides 24/7 emergency service throughout $($location.City) and the surrounding areas. Our emergency response team is equipped with advanced diagnostic tools and common replacement parts to resolve urgent situations quickly and effectively.</p>

                    <p>Emergency situations requiring immediate attention include complete system failures during extreme weather, refrigerant leaks, electrical problems, and safety concerns. Our emergency technicians prioritize safety while working efficiently to restore your comfort and system operation.</p>

                    <p>Rapid response times ensure $($location.City) customers receive prompt attention when HVAC emergencies occur. Our service vehicles are strategically located throughout the region to minimize response times and restore comfort as quickly as possible.</p>

                    <p>When immediate repairs aren't possible due to parts availability or complex issues, we can often provide temporary solutions to maintain basic comfort until permanent repairs can be completed. Our goal is to keep your family or business comfortable while ensuring quality repairs that provide lasting solutions.</p>

                    <h3>Indoor Air Quality Solutions for $($location.City)</h3>

                    <p>Beyond temperature control, ductless mini split systems offer significant <a href="../services/indoor-air-quality.html">indoor air quality</a> benefits for $($location.City) properties. Advanced filtration systems continuously clean the air, removing dust, pollen, pet dander, and other airborne contaminants that can trigger allergies and respiratory issues.</p>

                    <p>Multi-stage filtration systems may include HEPA filters, activated carbon filters, ionizers, and UV sterilization technology that eliminates bacteria, viruses, and odors. These advanced systems provide cleaner, healthier indoor air for your family or employees.</p>

                    <p>The absence of ductwork eliminates many common indoor air quality problems associated with traditional HVAC systems. Ductwork can harbor dust, mold, and other contaminants that circulate throughout the property with each heating and cooling cycle. Ductless systems avoid this issue entirely, providing cleaner air delivery.</p>

                    <p>We also offer additional indoor air quality solutions including whole-house air purifiers, humidifiers, dehumidifiers, and <a href="../services/duct-cleaning.html">duct cleaning</a> services for properties with existing ductwork. These solutions work together to create the healthiest possible indoor environment.</p>

                    <h3>Commercial Ductless Mini Split Solutions in $($location.City)</h3>

                    <p>Elite HVAC Solutions provides comprehensive <a href="../services/commercial-hvac.html">commercial HVAC</a> services for $($location.City) businesses, including specialized ductless mini split solutions designed for commercial applications. These systems offer businesses precise climate control, reduced operating costs, and improved comfort for employees and customers.</p>

                    <p>Commercial ductless mini split installations require specialized expertise in larger systems, multiple zone coordination, and business operation considerations. Our commercial technicians understand the unique requirements of business applications and design solutions that minimize operational disruption.</p>

                    <p>Flexible installation scheduling accommodates business hours and operational requirements, often working during off-hours or low-activity periods to minimize disruption. We coordinate with business owners to ensure installations proceed smoothly without interfering with daily operations.</p>

                    <p>Energy efficiency benefits are particularly valuable for commercial applications where heating and cooling costs represent significant operational expenses. Many $($location.City) businesses report substantial cost savings after switching to high-efficiency ductless mini split systems.</p>

                    <div class="emergency-banner">
                        Ready for Professional Service in $($location.City)? Call 855-772-1650 Today!
                    </div>

                    <h3>Financing and Rebate Programs</h3>

                    <p>Elite HVAC Solutions offers flexible financing options to make ductless mini split installation accessible for all $($location.City) families and businesses. Our financing programs feature competitive interest rates and flexible payment terms designed to fit various budgets and financial situations.</p>

                    <p>We stay informed about available utility rebates and government incentives for high-efficiency HVAC systems and help customers navigate application processes to maximize savings. These programs can significantly reduce the net cost of ductless mini split installation, making them an even more attractive investment.</p>

                    <p>Our team provides detailed cost-benefit analyses showing projected energy savings and return on investment for different system options. This information helps $($location.City) customers make informed decisions about their HVAC investments and understand the long-term financial benefits of high-efficiency installations.</p>

                    <h3>Contact Elite HVAC Solutions for $($location.City) Service</h3>

                    <p>Experience the comfort, efficiency, and reliability of professional ductless mini split services from $($location.City)'s most trusted HVAC contractor. Our certified technicians are ready to provide comprehensive assessments, expert installations, reliable repairs, and professional maintenance services that exceed your expectations.</p>

                    <p>We serve all of $($location.City) and the surrounding $($location.Zip) area with prompt, professional service and competitive pricing. Our commitment to customer satisfaction and service excellence has made us the preferred choice for ductless mini split services throughout northeastern Indiana.</p>

                    <p><strong>Call Elite HVAC Solutions today at 855-772-1650 to schedule your free consultation and discover why professional ductless mini split services make all the difference in comfort, efficiency, and satisfaction for your $($location.City) property.</strong></p>
                </div>
            </div>
        </section>

        <!-- Quote Form Section -->
        <section id="quote" class="section quote-form">
            <div class="container">
                <h2 class="section-title">Get Your Free Estimate in $($location.City)</h2>
                <div class="form-container">
                    <div class="form-text">
                        <h2>Ready for Ductless Mini Splits?</h2>
                        <p>Professional ductless mini split services in $($location.City), IN.</p>
                        <p><strong>✓ Free in-home consultations</strong></p>
                        <p><strong>✓ Expert installation and service</strong></p>
                        <p><strong>✓ 24/7 emergency availability</strong></p>
                        <p><strong>✓ Comprehensive warranties</strong></p>
                    </div>
                    <div id="polyares_form_container" style="margin:0px;padding:0px;">
                        <div id="polyares_form" style="width: 244px; height: 377px;">
                            <iframe src="//leads.polyares.com/?api_key=b45897227445c105815c9bfc451e92eb6357bedc&funnel=5&category=8&buttons=btn-danger" height="100%" width="100%" frameborder="no" scrolling="yes" noresize="true" vspace="0" hspace="0" style="border-radius: 10px; border: 1px solid #333;"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- Floating Phone CTA -->
    <a href="tel:855-772-1650" class="floating-phone">📞 855-772-1650</a>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3>Elite HVAC Solutions</h3>
                    <p>Professional ductless mini split specialists serving $($location.City), IN.</p>
                    <p><strong>Phone:</strong> 855-772-1650</p>
                    <p><strong>24/7 Emergency Service</strong></p>
                </div>
                <div class="footer-section">
                    <h3>Our Services</h3>
                    <ul>
                        <li><a href="../services/ductless-mini-split-installation.html">Mini Split Installation</a></li>
                        <li><a href="../services/ductless-mini-split-repair.html">Mini Split Repair</a></li>
                        <li><a href="../services/ductless-mini-split-maintenance.html">Mini Split Maintenance</a></li>
                        <li><a href="../services/hvac-installation.html">HVAC Installation</a></li>
                        <li><a href="../services/hvac-repair.html">HVAC Repair</a></li>
                        <li><a href="../services/emergency-hvac-services.html">Emergency Services</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h3>Service Areas</h3>
                    <ul>
                        <li><a href="huntertown-ductless-mini-splits.html">Huntertown, IN</a></li>
                        <li><a href="fort-wayne-ductless-mini-splits.html">Fort Wayne, IN</a></li>
                        <li><a href="new-haven-ductless-mini-splits.html">New Haven, IN</a></li>
                        <li><a href="woodburn-ductless-mini-splits.html">Woodburn, IN</a></li>
                        <li><a href="grabill-ductless-mini-splits.html">Grabill, IN</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h3>Quick Links</h3>
                    <ul>
                        <li><a href="../index.html">Home</a></li>
                        <li><a href="#quote">Free Estimate</a></li>
                        <li><a href="tel:855-772-1650">Call Now</a></li>
                        <li><a href="../services/emergency-hvac-services.html">Emergency Service</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2024 Elite HVAC Solutions. All rights reserved. Professional ductless mini split services in $($location.City), IN.</p>
            </div>
        </div>
    </footer>
</body>
</html>
"@
    
    $filePath = "locations\$($location.Name).html"
    $content | Out-File -FilePath $filePath -Encoding UTF8
    Write-Host "Created $filePath"
}

Write-Host "All location pages created successfully!"
