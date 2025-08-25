import matplotlib.pyplot as plt

# Data
iterations = [64, 40, 25, 15, 8, 5, 3, 2, 1]
run_time_minutes = [8 + 23/60, 8 + 1/60, 7 + 55/60, 7 + 50/60, 5 + 58/60, 5 + 20/60, 4 + 33/60, 3 + 32/60, 2 + 55/60]
drc_violations = [0, 0, 0, 0, 4, 7, 133, 362, 467]

# Create figure and axis
fig, ax1 = plt.subplots(figsize=(10, 6))

# Plot Run Time on left y-axis
color_rt = 'tab:blue'
ax1.set_xlabel('Iterations')
ax1.set_ylabel('Run Time (minutes)', color=color_rt)
ax1.plot(iterations, run_time_minutes, color=color_rt, marker='o', linewidth=2, label='Run Time')
ax1.tick_params(axis='y', labelcolor=color_rt)
ax1.set_xticks(iterations)
ax1.invert_xaxis()  # Higher iterations on the left

# Create second y-axis for DRC Violations
ax2 = ax1.twinx()
color_drc = 'tab:red'
ax2.set_ylabel('DRC Violations', color=color_drc)
ax2.plot(iterations, drc_violations, color=color_drc, marker='s', linewidth=2, label='DRC Violations')
ax2.tick_params(axis='y', labelcolor=color_drc)

# Title and grid
plt.title('Trade-off Between Run Time and DRC Violations in ASIC Flow', fontsize=14)
ax1.grid(True, linestyle='--', alpha=0.6)

# Add legends
fig.legend(loc='upper center', bbox_to_anchor=(0.5, 0.05), ncol=2, fontsize=10)

# Adjust layout
fig.tight_layout()

# Show the plot
plt.show()
