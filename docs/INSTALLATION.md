# Installation Guide

Complete setup instructions for the UOM Harmonization Intelligence Platform.

## Prerequisites

### Required Software

#### KNIME Analytics Platform (Required)
- **Version**: 4.5 or higher
- **Download**: https://www.knime.com/downloads
- **System Requirements**: 64-bit OS, Java 11+ (included)

#### Hardware Requirements

**Minimum:**
- CPU: Dual-core 2.0 GHz
- RAM: 8 GB
- Storage: 5 GB free space

**Recommended:**
- CPU: Quad-core 3.0 GHz or better
- RAM: 16 GB or more
- Storage: 20 GB free space (SSD preferred)

---

## Installation Steps

### Step 1: Install KNIME Analytics Platform

#### Windows
1. Download KNIME installer from https://www.knime.com/downloads
2. Run the .exe installer
3. Follow the installation wizard (accept defaults)
4. Launch KNIME from Start Menu

#### macOS
1. Download KNIME .dmg file
2. Open the DMG and drag KNIME to Applications
3. Launch KNIME from Applications

#### Linux
1. Download KNIME .tar.gz file
2. Extract: `tar -xzf knime_*.tar.gz`
3. Navigate to extracted folder
4. Run: `./knime`

### Step 2: Configure KNIME (First Launch)

1. **Workspace Setup**
   - Choose or create a workspace directory
   - Recommended: Documents/KNIME-workspace

2. **Memory Configuration** (Important!)
   ```
   Edit -> Preferences -> General -> Memory
   - Set Maximum Heap Size: 8192 MB (or 50-70% of total RAM)
   - Set Maximum Direct Buffer: 2048 MB
   ```

3. **JavaScript View Settings**
   ```
   Edit -> Preferences -> JavaScript Views
   - Enable JavaScript execution
   - Enable local file access (for dashboard)
   ```

### Step 3: Clone the Repository

#### Option A: Using Git (Recommended)
```bash
# Clone via HTTPS
git clone https://github.com/JulietMirambo/Units_of_Measure_Harmonization-intelligence-platform.git

# Navigate into directory
cd Units_of_Measure_Harmonization-intelligence-platform
```

#### Option B: Download ZIP
1. Go to https://github.com/JulietMirambo/Units_of_Measure_Harmonization-intelligence-platform
2. Click green "Code" button -> Download ZIP
3. Extract ZIP to desired location

### Step 4: Import Workflow into KNIME

1. **Open KNIME Analytics Platform**

2. **Import Workflow**
   - File -> Import KNIME Workflow...
   - Select "Import from archive or folder"
   - Click "Browse" button

3. **Select Workflow Directory**
   - Navigate to your cloned/extracted repository
   - Select the `workflow` folder
   - Click "Select Folder"

4. **Import Options**
   - Keep default settings
   - Click "Finish"

5. **Wait for Import**
   - KNIME will import the workflow
   - If prompted, install missing extensions (auto-install recommended)

---

## Verification

### Test the Installation

1. **Locate the Workflow**
   - In KNIME Explorer panel (left side)
   - Find "Units_of_Measure_Harmonization-intelligence-platform"

2. **Open the Workflow**
   - Double-click to open

3. **Configure Sample Data**
   - Right-click "CSV Reader" node
   - Configure -> Browse to `data-sample/sample_10k.csv`
   - Click OK

4. **Execute Test Run**
   - Right-click workflow root
   - Select "Execute All"
   - Wait 2-3 minutes

5. **View Results**
   - Right-click "Visual Dashboard" node
   - Select "Open View"
   - Dashboard should appear

### Expected Output

**Success Indicators:**
- All nodes show green traffic lights
- Console shows no red error messages
- Dashboard opens and displays statistics
- Results table populated with data

---

## Troubleshooting

### Common Issues

#### Issue 1: "Cannot find workflow"
**Solutions:**
- Ensure you selected the `workflow` folder, not repository root
- Check that folder contains `workflow.knime` file

#### Issue 2: "Missing extensions"
**Solutions:**
- Click "Install" when prompted
- Restart KNIME after installation

#### Issue 3: "Out of memory" errors
**Solutions:**
1. Close KNIME
2. Find knime.ini file:
   - Windows: C:\Program Files\KNIME\knime.ini
   - macOS: /Applications/KNIME.app/Contents/Eclipse/knime.ini
3. Edit and change: `-Xmx8g` (for 8GB heap)
4. Save and restart KNIME

#### Issue 4: Dashboard not displaying
**Solutions:**
- Enable JavaScript: Edit -> Preferences -> JavaScript Views
- Clear KNIME cache: File -> Preferences -> Advanced -> Clear Cache
- Re-execute the workflow

#### Issue 5: Slow performance
**Solutions:**
- Increase memory allocation (see Issue 3)
- Close other applications
- Use SSD for workspace if possible

---

## Next Steps

After successful installation:

1. **Read the User Guide** - [User Guide](USER_GUIDE.md)
2. **Explore the Dashboard** - [Dashboard Guide](dashboard-guide.md)
3. **Understand the Architecture** - [Architecture](ARCHITECTURE.md)
4. **Try Examples** - Check the examples/ folder
5. **Use Your Own Data** - Start with small datasets

---

## Additional Resources

- [KNIME Documentation](https://docs.knime.com/)
- [KNIME Video Tutorials](https://www.youtube.com/c/KNIME)
- [KNIME Community Hub](https://hub.knime.com/)
- [GitHub Discussions](https://github.com/JulietMirambo/Units_of_Measure_Harmonization-intelligence-platform/discussions)
- [Issue Tracker](https://github.com/JulietMirambo/Units_of_Measure_Harmonization-intelligence-platform/issues)

---

**Installation complete!** You're ready to start detecting and correcting UOM errors.

Questions? [Open an issue](https://github.com/JulietMirambo/Units_of_Measure_Harmonization-intelligence-platform/issues/new)
