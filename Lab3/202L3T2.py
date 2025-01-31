import matplotlib.pyplot as plt

x = [0, 0.0002, 0.0004, 0.0008, 0.0016, 0.0032, 0.0064, 0.0128, 0.0256, 0.0456, 0.0656, 0.0856, 0.1056, 0.1256, 0.1456, 0.1656, 0.1856, 0.2056, 0.2256, 0.2456, 0.2656, 0.2856, 0.3056, 0.3256, 0.3456, 0.3656, 0.3856, 0.4056, 0.4256, 0.4456, 0.4656, 0.4856, 0.5056, 0.5256, 0.5456, 0.5656, 0.5856, 0.6056, 0.6256, 0.6456, 0.6656, 0.6856, 0.7056, 0.7256, 0.7456, 0.7656, 0.7856, 0.8056, 0.8256, 0.8456, 0.8656, 0.8856, 0.9056, 0.9256, 0.9456, 0.9656, 0.9856, 1] # Time
y = [0, 9.52381E-10, 1.8972E-09, 3.77185E-09, 7.43257E-09, 1.44135E-08, 2.71156E-08, 4.81955E-08, 7.74655E-08, 1.0177E-07, 1.12185E-07, 1.16649E-07, 1.18562E-07, 1.19382E-07, 1.19733E-07, 1.19884E-07, 1.19949E-07, 1.19976E-07, 1.19988E-07, 1.19993E-07, 1.19995E-07, 1.19996E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07, 1.19997E-07] # Current

fig, ax = plt.subplots()
ax.plot(x, y, color="#D33F49")

ax.set_facecolor('#EBEBEB')
ax.set_axisbelow(True)
[ax.spines[side].set_visible(False) for side in ax.spines]
ax.grid()
ax.grid(which='major', color='white', linewidth=1.2)
ax.grid(which='minor', color='white', linewidth=0.6)
ax.minorticks_on()
ax.margins(0, 0)
ax.set_xlabel('Time (s)', fontweight ='bold')
ax.set_ylabel('Current (A)', fontweight ='bold')
ax.set_title("Charging of an inductor", fontweight ='bold')

# Find when the graph stabilizes using tangent at every point
for i in range(1, len(x)):
    if y[i] - y[i-1] < 1e-10:
        print("Time when the graph stabilizes: ", x[i], "s")
        break

# plt.show()
plt.savefig("ECTE202 Lab 3-2.png", format='png', dpi=2500, bbox_inches='tight')