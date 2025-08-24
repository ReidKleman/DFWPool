<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>DFW Pool Patrol - XML Sitemap</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            background: linear-gradient(135deg, #1e40af 0%, #3b82f6 100%);
            min-height: 100vh;
            color: #1e293b;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem;
        }
        
        .header {
            background: white;
            padding: 2rem;
            border-radius: 12px;
            margin-bottom: 2rem;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        
        .header h1 {
            color: #1e40af;
            font-size: 2.5rem;
            margin-bottom: 0.5rem;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 1rem;
        }
        
        .header .icon {
            font-size: 3rem;
            color: #3b82f6;
        }
        
        .header p {
            color: #64748b;
            font-size: 1.1rem;
        }
        
        .stats {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 1rem;
            margin: 2rem 0;
        }
        
        .stat-card {
            background: white;
            padding: 1.5rem;
            border-radius: 8px;
            text-align: center;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
        }
        
        .stat-number {
            font-size: 2rem;
            font-weight: bold;
            color: #1e40af;
            display: block;
        }
        
        .stat-label {
            color: #64748b;
            font-size: 0.9rem;
            margin-top: 0.5rem;
        }
        
        .sitemap-section {
            background: white;
            border-radius: 12px;
            padding: 2rem;
            margin-bottom: 2rem;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }
        
        .section-title {
            color: #1e40af;
            font-size: 1.5rem;
            margin-bottom: 1rem;
            padding-bottom: 0.5rem;
            border-bottom: 2px solid #e2e8f0;
        }
        
        .url-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1rem;
        }
        
        .url-table th {
            background: #f8fafc;
            color: #374151;
            padding: 1rem;
            text-align: left;
            font-weight: 600;
            border-bottom: 2px solid #e2e8f0;
        }
        
        .url-table td {
            padding: 0.8rem 1rem;
            border-bottom: 1px solid #f1f5f9;
        }
        
        .url-table tr:hover {
            background: #f8fafc;
        }
        
        .url-link {
            color: #1e40af;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s ease;
        }
        
        .url-link:hover {
            color: #3b82f6;
            text-decoration: underline;
        }
        
        .priority-high { color: #dc2626; font-weight: bold; }
        .priority-medium { color: #f59e0b; font-weight: bold; }
        .priority-low { color: #059669; font-weight: bold; }
        
        .changefreq {
            background: #e0f2fe;
            color: #0c4a6e;
            padding: 0.2rem 0.5rem;
            border-radius: 4px;
            font-size: 0.8rem;
            font-weight: 500;
        }
        
        .footer {
            text-align: center;
            color: white;
            margin-top: 3rem;
            opacity: 0.8;
        }
        
        .footer a {
            color: #e0f2fe;
            text-decoration: none;
        }
        
        .footer a:hover {
            text-decoration: underline;
        }
        
        @media (max-width: 768px) {
            .container {
                padding: 1rem;
            }
            
            .header h1 {
                font-size: 1.8rem;
                flex-direction: column;
            }
            
            .url-table {
                font-size: 0.9rem;
            }
            
            .url-table th,
            .url-table td {
                padding: 0.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>
                <span class="icon">🏊‍♂️</span>
                DFW Pool Patrol Sitemap
            </h1>
            <p>Complete directory of all pages on dfwpoolpatrol.com - Your trusted pool service connection in Dallas Fort Worth</p>
        </div>
        
        <div class="stats">
            <div class="stat-card">
                <span class="stat-number"><xsl:value-of select="count(sitemap:urlset/sitemap:url)"/></span>
                <div class="stat-label">Total Pages</div>
            </div>
            <div class="stat-card">
                <span class="stat-number"><xsl:value-of select="count(sitemap:urlset/sitemap:url[sitemap:priority &gt;= 0.9])"/></span>
                <div class="stat-label">High Priority Pages</div>
            </div>
            <div class="stat-card">
                <span class="stat-number"><xsl:value-of select="count(sitemap:urlset/sitemap:url[contains(sitemap:loc, 'pool-service')])"/></span>
                <div class="stat-label">Service Pages</div>
            </div>
            <div class="stat-card">
                <span class="stat-number"><xsl:value-of select="count(sitemap:urlset/sitemap:url[contains(sitemap:loc, 'pool-cost')])"/></span>
                <div class="stat-label">Cost Pages</div>
            </div>
        </div>
        
        <div class="sitemap-section">
            <h2 class="section-title">All Pages</h2>
            <table class="url-table">
                <thead>
                    <tr>
                        <th>URL</th>
                        <th>Priority</th>
                        <th>Change Frequency</th>
                        <th>Last Modified</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="sitemap:urlset/sitemap:url">
                        <xsl:sort select="sitemap:priority" order="descending"/>
                        <tr>
                            <td>
                                <a href="{sitemap:loc}" class="url-link" target="_blank">
                                    <xsl:value-of select="sitemap:loc"/>
                                </a>
                            </td>
                            <td>
                                <xsl:attribute name="class">
                                    <xsl:choose>
                                        <xsl:when test="sitemap:priority &gt;= 0.9">priority-high</xsl:when>
                                        <xsl:when test="sitemap:priority &gt;= 0.8">priority-medium</xsl:when>
                                        <xsl:otherwise>priority-low</xsl:otherwise>
                                    </xsl:choose>
                                </xsl:attribute>
                                <xsl:value-of select="sitemap:priority"/>
                            </td>
                            <td>
                                <span class="changefreq">
                                    <xsl:value-of select="sitemap:changefreq"/>
                                </span>
                            </td>
                            <td>
                                <xsl:value-of select="sitemap:lastmod"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </tbody>
            </table>
        </div>
        
        <div class="footer">
            <p>Generated XML Sitemap for <a href="https://dfwpoolpatrol.com">DFW Pool Patrol</a></p>
            <p>Connecting homeowners with licensed pool service professionals throughout Dallas Fort Worth</p>
        </div>
    </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>