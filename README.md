# Marketing Attribution and User Journey Analysis

CoolTShirts sells shirts of all kinds, as long as they are T-shaped and cool. CTS started a few marketing campaigns to increase website visits and purchases. This project leverages SQL to analyze user interactions and marketing attribution data from the page_visits table. The objective is to gain insights into user behavior, identify the effectiveness of marketing campaigns, and understand the user journey from initial interaction to conversion (purchase). Key tasks and analyses include:

* First-Touch Attribution
  * Identify the first interaction ("first touch") for each user by finding the earliest timestamp in the page_visits table.
  * Determine the utm_source and utm_campaign associated with the first interaction.
  * Analyze the number of users attributed to each campaign and source during their first touch.
* Campaign and Source Metrics
  * Count and list distinct marketing campaigns (utm_campaign) and sources (utm_source) used to drive traffic.
  * Explore combinations of utm_source and utm_campaign to understand their impact.
* Page-Level User Engagement
  * Extract and count distinct page_name values to identify the key pages users visit during their journey.
  * Specifically analyze engagement with the "4 - purchase" page to measure conversions.
* Last-Touch Attribution
  * Identify the last interaction ("last touch") for each user by finding the latest timestamp.
  * Determine the utm_source and utm_campaign associated with the last touch.
  * Compare first-touch and last-touch attribution to identify shifts in user behavior.
* Conversion Analysis
  * Focus on users who reached the "4 - purchase" page, identifying the campaigns driving the highest number of conversions.
  * Limit the analysis to the top-performing campaigns based on user count.

## Goals and Outcomes

The analysis provides actionable insights to:
* Evaluate the performance of marketing campaigns (utm_campaign) and sources (utm_source) in driving user acquisition and conversion.
* Understand the user journey from initial engagement to purchase.
* Identify high-performing marketing strategies for optimizing future campaigns.
* This project serves as a foundation for strategic decision-making in marketing and user experience design.
