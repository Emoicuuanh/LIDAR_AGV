import numpy as np
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
from scipy.stats import norm

# === Calibration data ===
errors_mm = [-0.4, -0.2, -0.1, 0.1, 0.2, 0.74]  # Run 1-4, 6-7 (exclude outlier Run5)
mu = np.mean(errors_mm)   # 0.057 mm
sigma = np.std(errors_mm, ddof=1)  # 0.362 mm

# === Gaussian curve ===
x = np.linspace(mu - 3.8 * sigma, mu + 3.8 * sigma, 1000)
y = norm.pdf(x, mu, sigma)

fig, ax = plt.subplots(figsize=(12, 6))
fig.patch.set_facecolor('#1a1a2e')
ax.set_facecolor('#1a1a2e')

# === Colored regions ===
def fill_region(ax, x, mu, sigma, a, b, color, alpha=0.85):
    mask = (x >= mu + a * sigma) & (x <= mu + b * sigma)
    ax.fill_between(x[mask], norm.pdf(x[mask], mu, sigma), color=color, alpha=alpha)

fill_region(ax, x, mu, sigma,  0,  1, '#3a5fc8', 0.9)   # μ to +1σ  (dark blue)
fill_region(ax, x, mu, sigma, -1,  0, '#3a5fc8', 0.9)   # -1σ to μ  (dark blue)
fill_region(ax, x, mu, sigma,  1,  2, '#b05a7a', 0.85)  # +1σ to +2σ (pink)
fill_region(ax, x, mu, sigma, -2, -1, '#b05a7a', 0.85)  # -2σ to -1σ (pink)
fill_region(ax, x, mu, sigma,  2,  3, '#2d8a4e', 0.85)  # +2σ to +3σ (green)
fill_region(ax, x, mu, sigma, -3, -2, '#2d8a4e', 0.85)  # -3σ to -2σ (green)
fill_region(ax, x, mu, sigma,  3,  3.8, '#1a5c30', 0.6)
fill_region(ax, x, mu, sigma, -3.8, -3, '#1a5c30', 0.6)

# === Gaussian outline ===
ax.plot(x, y, color='white', linewidth=2.5)

# === Vertical lines at σ boundaries ===
sigma_labels = {-3: '-3σ', -2: '-2σ', -1: '-1σ', 0: 'μ', 1: '+1σ', 2: '+2σ', 3: '+3σ'}
sigma_values = {k: mu + k * sigma for k in sigma_labels}

for k, val in sigma_values.items():
    lw = 2.0 if k == 0 else 1.2
    ax.axvline(val, color='white', linewidth=lw, alpha=0.7, linestyle='-')
    ax.text(val, -0.045, sigma_labels[k], ha='center', va='top',
            color='white', fontsize=10, fontweight='bold')
    # Show mm value below
    ax.text(val, -0.065, f'{val:.2f}', ha='center', va='top',
            color='#aaaaaa', fontsize=8)

# === Percentage labels ===
pct_info = [
    (0.5,  0.34 * norm.pdf(mu, mu, sigma), '34.1%'),
    (-0.5, 0.34 * norm.pdf(mu, mu, sigma), '34.1%'),
    (1.5,  0.34 * norm.pdf(mu + sigma, mu, sigma), '13.6%'),
    (-1.5, 0.34 * norm.pdf(mu + sigma, mu, sigma), '13.6%'),
    (2.5,  0.50 * norm.pdf(mu + 2*sigma, mu, sigma), '2.1%'),
    (-2.5, 0.50 * norm.pdf(mu + 2*sigma, mu, sigma), '2.1%'),
    (3.3,  0.30 * norm.pdf(mu + 3*sigma, mu, sigma), '0.1%'),
    (-3.3, 0.30 * norm.pdf(mu + 3*sigma, mu, sigma), '0.1%'),
]
for sx, sy, txt in pct_info:
    ax.text(mu + sx * sigma, sy, txt, ha='center', va='center',
            color='white', fontsize=10, fontweight='bold')

# === Actual data points on x-axis ===
for val in errors_mm:
    ax.plot(val, -0.02, 'v', color='#ffdd00', markersize=10, zorder=5)
ax.text(mu, norm.pdf(mu, mu, sigma) * 1.08, f'Điểm đo thực tế ▼',
        ha='center', color='#ffdd00', fontsize=9)

# === Styling ===
ax.set_xlim(mu - 3.8 * sigma, mu + 3.8 * sigma)
ax.set_ylim(-0.09, norm.pdf(mu, mu, sigma) * 1.18)
ax.set_xlabel('Sai số (mm)', color='white', fontsize=12)
ax.set_ylabel('Mật độ xác suất', color='white', fontsize=12)
ax.set_title(f'Phân bố chuẩn sai số odom  (μ = {mu:.3f} mm,  σ = {sigma:.3f} mm)',
             color='white', fontsize=14, fontweight='bold', pad=15)
ax.tick_params(colors='white')
ax.spines['bottom'].set_color('white')
ax.spines['left'].set_color('white')
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)

plt.tight_layout()
plt.savefig('odom_error_distribution.png', dpi=150, bbox_inches='tight',
            facecolor='#1a1a2e')
plt.show()
print(f"mu = {mu:.4f} mm,  sigma = {sigma:.4f} mm")
print(f"-1σ = {mu-sigma:.3f} mm,  +1σ = {mu+sigma:.3f} mm")
print(f"-2σ = {mu-2*sigma:.3f} mm,  +2σ = {mu+2*sigma:.3f} mm")
