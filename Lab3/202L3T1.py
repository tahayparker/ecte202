import matplotlib.pyplot as plt

x = [0, 0.0006, 0.0012, 0.0024, 0.0048, 0.0096, 0.0192, 0.0384, 0.0768, 0.1368, 0.1968, 0.2568, 0.3168, 0.3768, 0.4368, 0.4968, 0.5568, 0.6168, 0.6768, 0.7368, 0.7968, 0.8568, 0.9168, 0.9768, 1.0368, 1.0968, 1.1568, 1.2168, 1.2768, 1.3368, 1.3968, 1.4568, 1.5168, 1.5768, 1.6368, 1.6968, 1.7568, 1.8168, 1.8768, 1.9368, 1.9968, 2.0568, 2.1168, 2.1768, 2.2368, 2.2968, 2.3568, 2.4168, 2.4768, 2.5368, 2.5968, 2.6568, 2.7168, 2.7768, 2.8368, 2.8968, 2.9568, 3] # Time
y = [0, 0.0009998, 0.0019994, 0.003998201, 0.007993404, 0.01597423, 0.031897635, 0.063592068, 0.12637627, 0.222883671, 0.317480034, 0.410203202, 0.501090267, 0.590177588, 0.677500804, 0.763094848, 0.84699396, 0.929231703, 1.009840976, 1.088854026, 1.166302462, 1.242217264, 1.316628804, 1.389566847, 1.461060573, 1.531138581, 1.599828906, 1.667159027, 1.733155878, 1.797845861, 1.861254854, 1.923408223, 1.984330832, 2.044047053, 2.102580775, 2.159955413, 2.21619392, 2.271318793, 2.325352084, 2.378315409, 2.430229955, 2.481116491, 2.530995372, 2.579886553, 2.627809592, 2.674783659, 2.720827547, 2.765959675, 2.810198097, 2.853560511, 2.896064263, 2.937726357, 2.978563459, 3.018591905, 3.057827709, 3.096286566, 3.133983862, 3.160662409] # Voltage

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
ax.set_ylabel('Voltage (V)', fontweight ='bold')
ax.set_title("Charging of a capacitor", fontweight ='bold')

# Max and Min Values
print("Max Voltage: ", max(y))
print("Time of Max Voltage: ", x[y.index(max(y))])
print("Min Voltage: ", min(y))
print("Time of Min Voltage: ", x[y.index(min(y))])

# plt.show()
plt.savefig("ECTE202 Lab 3-1.png", format='png', dpi=2500, bbox_inches='tight')