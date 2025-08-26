# Create remaining service pages
$services = @(
    @{Name="air-conditioning-services"; Title="Air Conditioning Services Huntertown IN | AC Repair & Installation"; H1="Professional Air Conditioning Services in Huntertown, IN"; Description="Complete air conditioning services in Huntertown, IN. Expert AC installation, repair, and maintenance. Energy-efficient cooling solutions. Call 855-772-1650!"},
    @{Name="heating-services"; Title="Heating Services Huntertown IN | Furnace Repair & Installation"; H1="Expert Heating Services in Huntertown, IN"; Description="Professional heating services in Huntertown, IN. Furnace installation, repair, and maintenance. Reliable heating solutions for Indiana winters. Call 855-772-1650!"},
    @{Name="indoor-air-quality"; Title="Indoor Air Quality Services Huntertown IN | Air Purification Systems"; H1="Indoor Air Quality Solutions in Huntertown, IN"; Description="Improve your indoor air quality in Huntertown, IN. Professional air purification, filtration, and ventilation services. Healthier home solutions. Call 855-772-1650!"},
    @{Name="commercial-hvac"; Title="Commercial HVAC Services Huntertown IN | Business HVAC Solutions"; H1="Commercial HVAC Services in Huntertown, IN"; Description="Professional commercial HVAC services in Huntertown, IN. Business heating, cooling, and ventilation solutions. Expert commercial installations and repairs. Call 855-772-1650!"},
    @{Name="emergency-hvac-services"; Title="24/7 Emergency HVAC Services Huntertown IN | Emergency Repair"; H1="24/7 Emergency HVAC Services in Huntertown, IN"; Description="24/7 emergency HVAC services in Huntertown, IN. Fast response for heating and cooling emergencies. Available around the clock. Call 855-772-1650 now!"},
    @{Name="energy-efficiency-audits"; Title="Energy Efficiency Audits Huntertown IN | HVAC Energy Assessments"; H1="Energy Efficiency Audits in Huntertown, IN"; Description="Professional energy efficiency audits in Huntertown, IN. Reduce energy costs with comprehensive HVAC assessments and optimization. Call 855-772-1650!"},
    @{Name="duct-cleaning"; Title="Duct Cleaning Services Huntertown IN | Air Duct Cleaning"; H1="Professional Duct Cleaning Services in Huntertown, IN"; Description="Expert duct cleaning services in Huntertown, IN. Improve air quality and HVAC efficiency with professional ductwork cleaning. Call 855-772-1650!"},
    @{Name="thermostat-installation"; Title="Thermostat Installation Huntertown IN | Smart Thermostat Services"; H1="Thermostat Installation Services in Huntertown, IN"; Description="Professional thermostat installation in Huntertown, IN. Smart thermostats, programmable controls, and HVAC automation. Call 855-772-1650!"},
    @{Name="heat-pump-services"; Title="Heat Pump Services Huntertown IN | Heat Pump Installation & Repair"; H1="Heat Pump Services in Huntertown, IN"; Description="Complete heat pump services in Huntertown, IN. Installation, repair, and maintenance for efficient year-round comfort. Call 855-772-1650!"},
    @{Name="furnace-services"; Title="Furnace Services Huntertown IN | Furnace Installation & Repair"; H1="Furnace Services in Huntertown, IN"; Description="Expert furnace services in Huntertown, IN. Installation, repair, and maintenance for reliable winter heating. Gas and electric furnaces. Call 855-772-1650!"}
)

foreach ($service in $services) {
    $content = @"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$($service.Title)</title>
    <meta name="description" content="$($service.Description)">
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
                            <a href="ductless-mini-split-installation.html">Mini Split Installation</a>
                            <a href="ductless-mini-split-repair.html">Mini Split Repair</a>
                            <a href="ductless-mini-split-maintenance.html">Mini Split Maintenance</a>
                            <a href="hvac-installation.html">HVAC Installation</a>
                            <a href="hvac-repair.html">HVAC Repair</a>
                            <a href="air-conditioning-services.html">AC Services</a>
                            <a href="heating-services.html">Heating Services</a>
                            <a href="indoor-air-quality.html">Indoor Air Quality</a>
                            <a href="commercial-hvac.html">Commercial HVAC</a>
                            <a href="emergency-hvac-services.html">Emergency Services</a>
                            <a href="energy-efficiency-audits.html">Energy Audits</a>
                            <a href="duct-cleaning.html">Duct Cleaning</a>
                            <a href="thermostat-installation.html">Thermostat Services</a>
                            <a href="heat-pump-services.html">Heat Pump Services</a>
                            <a href="furnace-services.html">Furnace Services</a>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a href="#locations">Locations</a>
                        <div class="dropdown-content">
                            <a href="../locations/fort-wayne-ductless-mini-splits.html">Fort Wayne</a>
                            <a href="../locations/new-haven-ductless-mini-splits.html">New Haven</a>
                            <a href="../locations/woodburn-ductless-mini-splits.html">Woodburn</a>
                            <a href="../locations/grabill-ductless-mini-splits.html">Grabill</a>
                            <a href="../locations/auburn-ductless-mini-splits.html">Auburn</a>
                            <a href="../locations/garrett-ductless-mini-splits.html">Garrett</a>
                            <a href="../locations/butler-ductless-mini-splits.html">Butler</a>
                            <a href="../locations/waterloo-ductless-mini-splits.html">Waterloo</a>
                            <a href="../locations/angola-ductless-mini-splits.html">Angola</a>
                            <a href="../locations/fremont-ductless-mini-splits.html">Fremont</a>
                            <a href="../locations/kendallville-ductless-mini-splits.html">Kendallville</a>
                            <a href="../locations/ligonier-ductless-mini-splits.html">Ligonier</a>
                            <a href="../locations/albion-ductless-mini-splits.html">Albion</a>
                            <a href="../locations/rome-city-ductless-mini-splits.html">Rome City</a>
                            <a href="../locations/avilla-ductless-mini-splits.html">Avilla</a>
                            <a href="../locations/churubusco-ductless-mini-splits.html">Churubusco</a>
                            <a href="../locations/columbia-city-ductless-mini-splits.html">Columbia City</a>
                            <a href="../locations/huntertown-ductless-mini-splits.html">Huntertown</a>
                            <a href="../locations/roanoke-ductless-mini-splits.html">Roanoke</a>
                            <a href="../locations/monroeville-ductless-mini-splits.html">Monroeville</a>
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
            🚨 24/7 Emergency Service Available - Call 855-772-1650 🚨
        </div>

        <section class="section">
            <div class="container">
                <div class="content-section">
                    <h1>$($service.H1)</h1>
                    
                    <p>Elite HVAC Solutions provides professional HVAC services throughout Huntertown, Indiana, specializing in high-quality solutions for residential and commercial properties. Our certified technicians have over 15 years of experience delivering exceptional service with 24/7 emergency availability and expert technician support for all your heating and cooling needs.</p>

                    <p>We understand the unique climate challenges of northeastern Indiana and work with leading manufacturers to provide the most reliable and efficient HVAC solutions available. Our commitment to customer satisfaction and professional excellence has made us Huntertown's trusted choice for all HVAC services.</p>

                    <img src="../images/ductless-mini-split-1.jpg" alt="Professional HVAC services in Huntertown IN" style="width: 100%; max-width: 600px; height: auto; border-radius: 10px; margin: 20px 0;">

                    <h2>Comprehensive HVAC Solutions</h2>

                    <p>Our HVAC services cover every aspect of heating, cooling, and indoor air quality for Huntertown homes and businesses. We provide complete system design, professional installation, expert repair services, and preventive maintenance programs designed to maximize system performance and extend equipment life.</p>

                    <p>Professional installation services include detailed system sizing, optimal equipment selection, code-compliant installation, and comprehensive testing to ensure peak performance. We work with top manufacturers including Carrier, Trane, Lennox, Mitsubishi Electric, and Daikin to provide the highest quality equipment and installation services.</p>

                    <p>Expert repair services address all types of HVAC problems with advanced diagnostic equipment and genuine replacement parts. Our technicians maintain extensive inventories of common parts and have access to manufacturer technical support for complex repair situations.</p>

                    <p>Preventive maintenance programs help customers avoid costly breakdowns while maximizing system efficiency and equipment life. Our maintenance services include thorough system inspection, professional cleaning, performance optimization, and detailed reporting to help customers understand their system condition and maintenance needs.</p>

                    <div class="highlight-box">
                        <h3>🏠 Professional HVAC Services</h3>
                        <ul>
                            <li><strong>Expert Installation:</strong> Professional system design and installation</li>
                            <li><strong>Emergency Repairs:</strong> 24/7 availability for urgent issues</li>
                            <li><strong>Preventive Maintenance:</strong> Comprehensive system care programs</li>
                            <li><strong>Energy Efficiency:</strong> Optimization for maximum savings</li>
                            <li><strong>Indoor Air Quality:</strong> Advanced filtration and purification</li>
                            <li><strong>Professional Technicians:</strong> Certified and experienced specialists</li>
                        </ul>
                    </div>

                    <h3>Advanced Technology Integration</h3>

                    <p>Modern HVAC systems offer advanced technology features that enhance comfort, efficiency, and convenience. Our services include installation and configuration of smart thermostats, zoning systems, air quality monitoring, and home automation integration that provide precise control and energy savings.</p>

                    <p>Smart thermostat installation provides programmable schedules, remote access, energy usage monitoring, and learning capabilities that optimize comfort while reducing energy consumption. These advanced controls can improve efficiency by 10-20% while providing enhanced convenience and system monitoring.</p>

                    <p>Zoning system installation allows independent temperature control for different areas, maximizing comfort while minimizing energy waste. Zoning is particularly beneficial for larger homes or properties with varying occupancy patterns and comfort requirements.</p>

                    <p>Indoor air quality solutions include air purifiers, humidifiers, dehumidifiers, and advanced filtration systems that work with your HVAC system to provide cleaner, healthier indoor air for your family or employees.</p>

                    <img src="../images/ductless-mini-split-3.jpg" alt="HVAC service technician working" style="width: 100%; max-width: 600px; height: auto; border-radius: 10px; margin: 20px 0; float: right; margin-left: 20px;">

                    <h3>Energy Efficiency and Cost Savings</h3>

                    <p>Energy efficiency is a top priority for modern HVAC systems, and proper installation and maintenance are crucial for achieving maximum efficiency benefits. Our services focus on optimizing system performance to deliver the greatest energy savings and lowest operating costs for Huntertown customers.</p>

                    <p>High-efficiency systems can achieve significant energy savings compared to older equipment, with many customers reporting 30-50% reductions in heating and cooling costs. These savings quickly offset equipment costs while providing enhanced comfort and reliability.</p>

                    <p>Proper system sizing ensures optimal efficiency and performance while preventing short cycling and capacity issues that reduce efficiency and comfort. Our detailed load calculations account for all factors affecting heating and cooling requirements including insulation, windows, orientation, and local climate conditions.</p>

                    <p>Regular maintenance helps maintain peak efficiency while identifying opportunities for performance improvement. Our maintenance programs include efficiency testing, system optimization, and recommendations for upgrades or modifications that can further reduce operating costs.</p>

                    <div class="trust-signals">
                        <h3>⭐ Customer Success Stories ⭐</h3>
                        <p>"Elite HVAC provides outstanding service every time. Professional, reliable, and always available when we need them most!" - Patricia K., Huntertown</p>
                        <p>"Best HVAC company in the area. They've taken great care of our systems for years and always exceed expectations!" - William R., Huntertown</p>
                    </div>

                    <h3>Quality Assurance and Customer Support</h3>

                    <p>Every service provided by Elite HVAC Solutions includes comprehensive quality assurance measures and ongoing customer support. Our commitment to excellence ensures customers receive the highest quality service and long-term satisfaction with their HVAC investment.</p>

                    <p>Quality assurance includes detailed inspection procedures, performance testing, and customer education to ensure complete satisfaction with all services. We provide comprehensive documentation and follow-up support to address any questions or concerns that may arise.</p>

                    <p>Customer support extends beyond service completion with seasonal reminders, maintenance scheduling assistance, and technical support as needed. Our commitment to long-term customer relationships sets us apart from competitors who focus solely on individual transactions.</p>

                    <p>We offer flexible financing options and help customers take advantage of available rebates and incentives for high-efficiency equipment. Our team provides detailed cost-benefit analyses and helps customers make informed decisions about their HVAC investments.</p>

                    <div class="emergency-banner">
                        Ready for Professional Service? Call 855-772-1650 for Expert HVAC Solutions!
                    </div>

                    <h3>Contact Elite HVAC Solutions</h3>

                    <p>Experience the comfort, efficiency, and reliability of professional HVAC services from Huntertown's most trusted contractor. Our certified technicians are ready to provide comprehensive assessments, expert installations, reliable repairs, and professional maintenance services that exceed your expectations.</p>

                    <p>We offer free consultations and estimates for all services, with competitive pricing and flexible financing options. Our commitment to customer satisfaction and service excellence has made us the preferred choice for HVAC services throughout the Fort Wayne metropolitan area.</p>

                    <p><strong>Call Elite HVAC Solutions today at 855-772-1650 to schedule your service and discover why professional HVAC care makes all the difference in system performance and customer satisfaction.</strong></p>
                </div>
            </div>
        </section>

        <!-- Quote Form Section -->
        <section id="quote" class="section quote-form">
            <div class="container">
                <h2 class="section-title">Get Professional Service Today</h2>
                <div class="form-container">
                    <div class="form-text">
                        <h2>Ready for Expert HVAC Service?</h2>
                        <p>Professional HVAC solutions in Huntertown, IN.</p>
                        <p><strong>✓ Free consultations and estimates</strong></p>
                        <p><strong>✓ Expert technicians and service</strong></p>
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
                    <p>Professional HVAC specialists serving Huntertown, IN.</p>
                    <p><strong>Phone:</strong> 855-772-1650</p>
                    <p><strong>24/7 Emergency Service</strong></p>
                </div>
                <div class="footer-section">
                    <h3>Our Services</h3>
                    <ul>
                        <li><a href="ductless-mini-split-installation.html">Mini Split Installation</a></li>
                        <li><a href="hvac-installation.html">HVAC Installation</a></li>
                        <li><a href="hvac-repair.html">HVAC Repair</a></li>
                        <li><a href="emergency-hvac-services.html">Emergency Services</a></li>
                        <li><a href="commercial-hvac.html">Commercial HVAC</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h3>Service Areas</h3>
                    <ul>
                        <li><a href="../locations/huntertown-ductless-mini-splits.html">Huntertown, IN</a></li>
                        <li><a href="../locations/fort-wayne-ductless-mini-splits.html">Fort Wayne, IN</a></li>
                        <li><a href="../locations/new-haven-ductless-mini-splits.html">New Haven, IN</a></li>
                        <li><a href="../locations/woodburn-ductless-mini-splits.html">Woodburn, IN</a></li>
                        <li><a href="../locations/grabill-ductless-mini-splits.html">Grabill, IN</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h3>Quick Links</h3>
                    <ul>
                        <li><a href="../index.html">Home</a></li>
                        <li><a href="#quote">Get Service</a></li>
                        <li><a href="tel:855-772-1650">Call Now</a></li>
                        <li><a href="emergency-hvac-services.html">Emergency Service</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2024 Elite HVAC Solutions. All rights reserved. Professional HVAC services in Huntertown, IN.</p>
            </div>
        </div>
    </footer>
</body>
</html>
"@
    
    $filePath = "services\$($service.Name).html"
    $content | Out-File -FilePath $filePath -Encoding UTF8
    Write-Host "Created $filePath"
}

Write-Host "All service pages created successfully!"
