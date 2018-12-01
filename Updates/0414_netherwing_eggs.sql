-- Update pool_template descriptions
UPDATE `pool_template` SET `description` = 'Netherwing Eggs (185915) - Dragonmaw Fortress' WHERE `entry` = 25427;
UPDATE `pool_template` SET `description` = 'Netherwing Eggs (185915) - Netherwing Ledge' WHERE `entry` = 25428;
UPDATE `pool_template` SET `description` = 'Netherwing Eggs (185915) - Netherwing Mine' WHERE `entry` = 25429;
-- And set equal chances
UPDATE pool_gameobject SET `description` = 'Netherwing Egg (185915) - Dragonmaw Fortress', chance=0 WHERE pool_entry=25427;
UPDATE pool_gameobject SET `description` = 'Netherwing Egg (185915) - Netherwing Ledge', chance=0 WHERE pool_entry=25428;
UPDATE pool_gameobject SET `description` = 'Netherwing Egg (185915) - Netherwing Mine', chance=0 WHERE pool_entry=25429;
-- Delete pools that has unexisting pool_templates set (we readd them later)
DELETE FROM pool_gameobject WHERE pool_entry IN(30035,30036);

-- Delete spawns that are now replaced by sniffed positions
DELETE FROM gameobject WHERE id=185915 AND guid IN(121857,121855,121853,121856,121850,121854,121868,121867,121861,121870,121864,185915,121866,121876,121886,121872,121882,121877,121865,121879,121878,121904,50479,50422,50423,50424);
DELETE FROM pool_gameobject WHERE guid IN(121857,121855,121853,121856,121850,121854,121868,121867,121861,121870,121864,185915,121866,121876,121886,121872,121882,121877,121865,121879,121878,121904,50479,50422,50423,50424);

SET @GUID := 160971;
DELETE FROM gameobject WHERE id=185915 AND (guid BETWEEN @GUID + 1 AND @GUID + 76); -- And insert 76 missing sniffed spawns
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES 
(@GUID + 1, 185915, 530, 1, -5448.83, -24.3292, 110.702, 2.00713, 0, 0, 0.843391, 0.5373, 3600, 3600, 255, 1),
(@GUID + 2, 185915, 530, 1, -5418.63, 477.225, 46.6154, 2.47837, 0, 0, 0.945518, 0.325568, 3600, 3600, 255, 1),
(@GUID + 3, 185915, 530, 1, -5397.3, 612.787, 85.1582, 3.927, 0, 0, -0.923879, 0.382686, 3600, 3600, 255, 1),
(@GUID + 4, 185915, 530, 1, -5341.82, -43.5872, 90.3481, 3.29869, 0, 0, -0.996917, 0.0784664, 3600, 3600, 255, 1),
(@GUID + 5, 185915, 530, 1, -5308.35, 57.9292, 110.024, 1.11701, 0, 0, 0.529919, 0.848048, 3600, 3600, 255, 1),
(@GUID + 6, 185915, 530, 1, -5303.76, 544.032, 34.0402, 2.42601, 0, 0, 0.936672, 0.350207, 3600, 3600, 255, 1),
(@GUID + 7, 185915, 530, 1, -5260.72, 186.911, 128.841, 5.20108, 0, 0, -0.515037, 0.857168, 3600, 3600, 255, 1),
(@GUID + 8, 185915, 530, 1, -5238, 137.927, -13.1254, 3.927, 0, 0, -0.923879, 0.382686, 3600, 3600, 255, 1),
(@GUID + 9, 185915, 530, 1, -5228.35, 798.669, 173.603, 3.00195, 0, 0, 0.997563, 0.0697661, 3600, 3600, 255, 1),
(@GUID + 10, 185915, 530, 1, -5215.15, 322.214, 123.416, 3.08918, 0, 0, 0.999657, 0.0262017, 3600, 3600, 255, 1),
(@GUID + 11, 185915, 530, 1, -5199.03, 624.213, 45.1267, 0.506145, 0, 0, 0.25038, 0.968148, 3600, 3600, 255, 1),
(@GUID + 12, 185915, 530, 1, -5189.28, 123.318, -11.8921, 5.46288, 0, 0, -0.398748, 0.91706, 3600, 3600, 255, 1),
(@GUID + 13, 185915, 530, 1, -5182.99, 424.538, -10.4361, 0.226893, 0, 0, 0.113203, 0.993572, 3600, 3600, 255, 1),
(@GUID + 14, 185915, 530, 1, -5179.29, 363.463, -20.2674, 0.0698117, 0, 0, 0.0348988, 0.999391, 3600, 3600, 255, 1),
(@GUID + 15, 185915, 530, 1, -5174.38, -152.213, 51.7318, 2.56563, 0, 0, 0.958819, 0.284016, 3600, 3600, 255, 1),
(@GUID + 16, 185915, 530, 1, -5170.73, 251.741, -32.0139, 2.87979, 0, 0, 0.991445, 0.130528, 3600, 3600, 255, 1),
(@GUID + 17, 185915, 530, 1, -5164.58, 615.068, 36.5102, 1.69297, 0, 0, 0.748956, 0.66262, 3600, 3600, 255, 1),
(@GUID + 18, 185915, 530, 1, -5152.54, 707.566, 43.6404, 4.04917, 0, 0, -0.898793, 0.438373, 3600, 3600, 255, 1),
(@GUID + 19, 185915, 530, 1, -5149.71, 671.502, 41.1243, 1.43117, 0, 0, 0.656058, 0.75471, 3600, 3600, 255, 1),
(@GUID + 20, 185915, 530, 1, -5143.51, 190.458, 150.333, 0.750491, 0, 0, 0.366501, 0.930418, 3600, 3600, 255, 1),
(@GUID + 21, 185915, 530, 1, -5136.7, 353.425, -18.5068, 5.61996, 0, 0, -0.325567, 0.945519, 3600, 3600, 255, 1),
(@GUID + 22, 185915, 530, 1, -5117.96, 89.7627, -12.0527, 5.32326, 0, 0, -0.461748, 0.887011, 3600, 3600, 255, 1),
(@GUID + 23, 185915, 530, 1, -5117.88, 294.901, 159.32, 1.15192, 0, 0, 0.544639, 0.838671, 3600, 3600, 255, 1),
(@GUID + 24, 185915, 530, 1, -5117.35, -109.776, 68.2887, 4.97419, 0, 0, -0.608761, 0.793354, 3600, 3600, 255, 1),
(@GUID + 25, 185915, 530, 1, -5109.37, 524.847, -10.3982, 4.85202, 0, 0, -0.656058, 0.75471, 3600, 3600, 255, 1),
(@GUID + 26, 185915, 530, 1, -5100.64, 166.182, -8.61069, 3.61284, 0, 0, -0.972369, 0.233448, 3600, 3600, 255, 1),
(@GUID + 27, 185915, 530, 1, -5096.63, 151.436, -11.3379, 1.09956, 0, 0, 0.522498, 0.852641, 3600, 3600, 255, 1),
(@GUID + 28, 185915, 530, 1, -5096.4, -29.9565, 169.821, 0.418879, 0, 0, 0.207912, 0.978148, 3600, 3600, 255, 1),
(@GUID + 29, 185915, 530, 1, -5095.69, 641.456, 32.7262, 2.79252, 0, 0, 0.984807, 0.173652, 3600, 3600, 255, 1),
(@GUID + 30, 185915, 530, 1, -5093.74, 439.616, -5.25503, 5.8294, 0, 0, -0.224951, 0.97437, 3600, 3600, 255, 1),
(@GUID + 31, 185915, 530, 1, -5089.8, 336.709, 4.87949, 4.41568, 0, 0, -0.803857, 0.594823, 3600, 3600, 255, 1),
(@GUID + 32, 185915, 530, 1, -5084.45, 139.49, 130.919, 0.645772, 0, 0, 0.317305, 0.948324, 3600, 3600, 255, 1),
(@GUID + 33, 185915, 530, 1, -5080.83, 491.369, -9.40129, 0.383971, 0, 0, 0.190808, 0.981627, 3600, 3600, 255, 1),
(@GUID + 34, 185915, 530, 1, -5071.84, 663.63, 33.1395, 1.90241, 0, 0, 0.814116, 0.580703, 3600, 3600, 255, 1),
(@GUID + 35, 185915, 530, 1, -5068.72, 178.252, -8.99214, 0.436332, 0, 0, 0.216439, 0.976296, 3600, 3600, 255, 1),
(@GUID + 36, 185915, 530, 1, -5061.81, 640.964, 29.3313, 6.03884, 0, 0, -0.121869, 0.992546, 3600, 3600, 255, 1),
(@GUID + 37, 185915, 530, 1, -5055.72, 623.2, 89.5802, 0.0174525, 0, 0, 0.00872612, 0.999962, 3600, 3600, 255, 1),
(@GUID + 38, 185915, 530, 1, -5053.39, 312.4, 5.84981, 5.20108, 0, 0, -0.515037, 0.857168, 3600, 3600, 255, 1),
(@GUID + 39, 185915, 530, 1, -5039.54, 415.692, -10.7986, 5.5676, 0, 0, -0.350207, 0.936672, 3600, 3600, 255, 1),
(@GUID + 40, 185915, 530, 1, -5034.84, 612.646, 184.41, 2.9845, 0, 0, 0.996917, 0.0784664, 3600, 3600, 255, 1),
(@GUID + 41, 185915, 530, 1, -5031.91, 289.691, 4.98487, 0.541051, 0, 0, 0.267238, 0.963631, 3600, 3600, 255, 1),
(@GUID + 42, 185915, 530, 1, -5026.72, 347.3, 170.65, 4.71239, 0, 0, -0.707107, 0.707107, 3600, 3600, 255, 1),
(@GUID + 43, 185915, 530, 1, -5025.03, 359.934, 1.24235, 1.44862, 0, 0, 0.66262, 0.748956, 3600, 3600, 255, 1),
(@GUID + 44, 185915, 530, 1, -5023.42, 589.374, 163.848, 1.83259, 0, 0, 0.793353, 0.608762, 3600, 3600, 255, 1),
(@GUID + 45, 185915, 530, 1, -5019.65, 654.349, 23.1631, 5.75959, 0, 0, -0.258819, 0.965926, 3600, 3600, 255, 1),
(@GUID + 46, 185915, 530, 1, -5017.84, 232.669, 109.655, 4.95674, 0, 0, -0.615661, 0.788011, 3600, 3600, 255, 1),
(@GUID + 47, 185915, 530, 1, -5013.82, 447.382, 17.7421, 1.91986, 0, 0, 0.819152, 0.573577, 3600, 3600, 255, 1),
(@GUID + 48, 185915, 530, 1, -5012.23, 435.849, -8.50751, 1.98967, 0, 0, 0.83867, 0.54464, 3600, 3600, 255, 1),
(@GUID + 49, 185915, 530, 1, -5004.11, 14.8037, 76.3614, 4.67748, 0, 0, -0.719339, 0.694659, 3600, 3600, 255, 1),
(@GUID + 50, 185915, 530, 1, -5003.99, -113.395, -4.66754, 0.244346, 0, 0, 0.121869, 0.992546, 3600, 3600, 255, 1),
(@GUID + 51, 185915, 530, 1, -4996.78, 669.637, 23.5955, 0.523598, 0, 0, 0.258819, 0.965926, 3600, 3600, 255, 1),
(@GUID + 52, 185915, 530, 1, -4993.62, 157.017, -14.6653, 5.55015, 0, 0, -0.358368, 0.933581, 3600, 3600, 255, 1),
(@GUID + 53, 185915, 530, 1, -4987.07, 735.798, 81.0512, 1.93731, 0, 0, 0.824125, 0.566408, 3600, 3600, 255, 1),
(@GUID + 54, 185915, 530, 1, -4972.33, 87.7207, 61.2606, 1.22173, 0, 0, 0.573576, 0.819152, 3600, 3600, 255, 1),
(@GUID + 55, 185915, 530, 1, -4971.98, 487.725, 5.24322, 4.57276, 0, 0, -0.754709, 0.656059, 3600, 3600, 255, 1),
(@GUID + 56, 185915, 530, 1, -4968.88, 144.102, 94.8483, 5.42798, 0, 0, -0.414693, 0.909962, 3600, 3600, 255, 1),
(@GUID + 57, 185915, 530, 1, -4960.82, 216.069, -11.42, 5.84685, 0, 0, -0.216439, 0.976296, 3600, 3600, 255, 1),
(@GUID + 58, 185915, 530, 1, -4959.43, 646.737, 18.4241, 0.85521, 0, 0, 0.414693, 0.909962, 3600, 3600, 255, 1),
(@GUID + 59, 185915, 530, 1, -4957.64, 382.887, -2.43409, 1.46608, 0, 0, 0.66913, 0.743145, 3600, 3600, 255, 1),
(@GUID + 60, 185915, 530, 1, -4947.62, 477.917, 144.214, 3.24635, 0, 0, -0.998629, 0.0523532, 3600, 3600, 255, 1),
(@GUID + 61, 185915, 530, 1, -4934.19, 323.557, 138.55, 4.18879, 0, 0, -0.866025, 0.500001, 3600, 3600, 255, 1),
(@GUID + 62, 185915, 530, 1, -4931.31, 426.105, 0.003176, 1.43117, 0, 0, 0.656058, 0.75471, 3600, 3600, 255, 1),
(@GUID + 63, 185915, 530, 1, -4928.36, 288.022, -12.45, 2.51327, 0, 0, 0.951056, 0.309017, 3600, 3600, 255, 1),
(@GUID + 64, 185915, 530, 1, -4911.07, 316.849, -11.5435, 1.3439, 0, 0, 0.622514, 0.782609, 3600, 3600, 255, 1),
(@GUID + 65, 185915, 530, 1, -4901.97, 597.292, 4.66352, 0.418879, 0, 0, 0.207912, 0.978148, 3600, 3600, 255, 1),
(@GUID + 66, 185915, 530, 1, -4883.4, 404.646, -5.77738, 1.95477, 0, 0, 0.829038, 0.559193, 3600, 3600, 255, 1),
(@GUID + 67, 185915, 530, 1, -4856.32, 467.917, -5.42577, 4.72984, 0, 0, -0.700909, 0.713251, 3600, 3600, 255, 1),
(@GUID + 68, 185915, 530, 1, -4817.81, 933.67, -14.7275, 0.0523589, 0, 0, 0.0261765, 0.999657, 3600, 3600, 255, 1),
(@GUID + 69, 185915, 530, 1, -4689.66, 771.303, 25.2163, 4.01426, 0, 0, -0.906307, 0.422619, 3600, 3600, 255, 1),
(@GUID + 70, 185915, 530, 1, -4244.83, 325.004, 134.417, 0.139625, 0, 0, 0.0697555, 0.997564, 3600, 3600, 255, 1),
(@GUID + 71, 185915, 530, 1, -4239.12, 436.852, 49.3634, 2.89724, 0, 0, 0.992546, 0.12187, 3600, 3600, 255, 1),
(@GUID + 72, 185915, 530, 1, -4234.24, 526.788, 78.4189, 3.85718, 0, 0, -0.936671, 0.35021, 3600, 3600, 255, 1),
(@GUID + 73, 185915, 530, 1, -4197.24, 528.217, 29.2594, 4.66003, 0, 0, -0.725374, 0.688355, 3600, 3600, 255, 1),
(@GUID + 74, 185915, 530, 1, -4190.31, 456.136, 30.5841, 5.42798, 0, 0, -0.414693, 0.909962, 3600, 3600, 255, 1),
(@GUID + 75, 185915, 530, 1, -4175.07, 300.02, 125.415, 4.64258, 0, 0, -0.731354, 0.681998, 3600, 3600, 255, 1),
(@GUID + 76, 185915, 530, 1, -4159.2, 369.727, 142.105, 0.349065, 0, 0, 0.173648, 0.984808, 3600, 3600, 255, 1);

DELETE FROM pool_gameobject WHERE pool_entry IN(25427,25428,25429) AND (guid BETWEEN @GUID + 1 AND @GUID + 76);
DELETE FROM pool_gameobject WHERE guid IN(121917,121871);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@GUID + 70, 25427, 0, 'Netherwing Egg (185915) - Dragonmaw Fortress'),
(@GUID + 71, 25427, 0, 'Netherwing Egg (185915) - Dragonmaw Fortress'),
(@GUID + 72, 25427, 0, 'Netherwing Egg (185915) - Dragonmaw Fortress'),
(@GUID + 73, 25427, 0, 'Netherwing Egg (185915) - Dragonmaw Fortress'),
(@GUID + 74, 25427, 0, 'Netherwing Egg (185915) - Dragonmaw Fortress'),
(@GUID + 75, 25427, 0, 'Netherwing Egg (185915) - Dragonmaw Fortress'),
(@GUID + 76, 25427, 0, 'Netherwing Egg (185915) - Dragonmaw Fortress'),

(121871, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 1, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 2, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 3, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 4, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 5, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 6, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 7, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 9, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 10, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 15, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 20, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 23, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 24, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 28, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 32, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 37, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 40, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 42, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 44, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 46, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 49, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 50, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 53, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 54, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 56, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 60, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 61, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 68, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),
(@GUID + 69, 25428, 0, 'Netherwing Egg (185915) - Netherwing Ledge'),

(121917, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 8, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 11, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 12, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 13, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 14, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 16, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 17, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 18, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 19, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 21, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 22, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 25, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 26, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 27, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 29, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 30, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 31, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 33, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 34, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 35, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 36, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 38, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 39, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 41, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 43, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 45, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 47, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 48, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 51, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 52, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 55, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 57, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 58, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 59, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 62, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 63, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 64, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 65, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 66, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine'),
(@GUID + 67, 25429, 0, 'Netherwing Egg (185915) - Netherwing Mine');

