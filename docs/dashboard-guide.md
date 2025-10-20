# Visual Dashboard Guide

Complete guide to using the interactive UOM Intelligence Dashboard.

## Overview

The Visual Dashboard is the heart of the platform - a real-time, interactive interface that shows:
- Error detection in progress
- Confidence scores and classifications
- Auto-correction results
- Statistical analytics
- Color-coded visualizations

## Accessing the Dashboard

1. Execute the KNIME workflow
2. Right-click the "Visual Dashboard" node
3. Select "Open View"
4. Dashboard opens in a new window

## Dashboard Components

### Summary Statistics
- **Total Records** processed
- **Errors Found** (count and percentage)
- **Auto-Corrected** (count and percentage)
- **Manual Review** needed (count and percentage)

### Error Classification Chart
Visual breakdown of error types:
- Decimal Errors (35%)
- Unit Mismatches (30%)
- Conversion Issues (20%)
- Format Problems (15%)

### Confidence Score Distribution
Histogram showing ML model confidence:
- **90-100%**: High confidence (auto-correct)
- **70-89%**: Medium confidence (review suggested)
- **Below 70%**: Low confidence (manual required)

### Detailed Results Table
Scrollable table with individual records showing:
- Record ID
- Original UOM
- Detected Error Type
- Suggested Fix
- Confidence Score
- Status (Auto-corrected/Manual Review)

## Interactive Features

### Filtering and Sorting
- Click column headers to sort
- Filter by error type
- Search specific records
- Export results (CSV, Excel, PDF)

### Real-Time Updates
As processing continues:
- Charts update automatically
- Progress bar advances
- New errors appear instantly

## Color Codes

### Status Colors
- Green: Valid/Corrected
- Yellow: Needs review
- Red: Critical error
- Gray: Processing

### Confidence Colors
- Green (90%+): Very confident
- Yellow (70-89%): Moderately confident
- Red (<70%): Low confidence

## Best Practices

1. **Monitor during processing** to identify patterns
2. **Review medium-confidence items** (70-89%)
3. **Export results regularly** for historical tracking
4. **Use filters** to focus on specific error types
5. **Document patterns** for process improvement

## Troubleshooting

### Dashboard Not Loading
- Check JavaScript is enabled in KNIME
- Verify workflow executed successfully
- Try refreshing the view

### Slow Performance
- Reduce table row limit
- Disable real-time updates
- Close other KNIME views

### Missing Data
- Ensure workflow completed
- Check input data loaded correctly
- Re-execute the workflow

## Advanced Features

### Export Options
- **CSV**: For Excel/database import
- **Excel**: With formatting
- **PDF Report**: For documentation

### Custom Views
1. Click Settings (gear icon)
2. Adjust chart types, colors, columns
3. Save layout for reuse

---

Questions? [Open an issue](https://github.com/JulietMirambo/Units_of_Measure_Harmonization-intelligence-platform/issues) or check the [FAQ](FAQ.md)
