-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema recipesdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `recipesdb` ;

-- -----------------------------------------------------
-- Schema recipesdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `recipesdb` DEFAULT CHARACTER SET utf8 ;
USE `recipesdb` ;

-- -----------------------------------------------------
-- Table `recipes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `recipes` ;

CREATE TABLE IF NOT EXISTS `recipes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(75) NOT NULL,
  `oven_temperature` INT NULL,
  `instructions` TEXT NOT NULL,
  `image_url` VARCHAR(2000) NULL,
  `time_to_complete` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS recipesuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'recipesuser'@'localhost' IDENTIFIED BY 'recipesuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'recipesuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `recipes`
-- -----------------------------------------------------
START TRANSACTION;
USE `recipesdb`;
INSERT INTO `recipes` (`id`, `name`, `oven_temperature`, `instructions`, `image_url`, `time_to_complete`) VALUES (1, 'Oatmeal Butterscotch', 350, 'Mix 1.25 cups of flour, 1 teaspoon of baking soda, 0.5 teaspoon of salt, 0.5 teaspoon of cinnamon. In a separate bowl mix 1 cup of butter softened, 0.75 cup of granulated white sugar, 0.75 cup of brown sugar, 2 large eggs and 1 teaspoon of vanilla extract. Mix until it is creamed together. Add dry to wet ingredients. After mixed add 3 cups of oatmeal and 1.66 cups of butterscotch morsels. Bake in oven at 375°F for 9:45. Let cool on baking rack. ', 'https://www.simplejoy.com/wp-content/uploads/2021/08/oatmeal-butterscotch-cookies.jpg', 90);
INSERT INTO `recipes` (`id`, `name`, `oven_temperature`, `instructions`, `image_url`, `time_to_complete`) VALUES (2, 'Sugar Free Snickerdoodles', 350, 'Mix 0.5 cups of butter, 1 teaspoon of vanilla, 1 large egg together. Next mix in 2 cups of almond flour, 1 teaspoon of baking soda, 1 teaspoon of cream of tartar, 0.75 cups of erythritol, 0.5 teaspoons of salt, and 1 tablespoon of cinnamon. Refrigerate dough for 5-10 mins. Roll dough into balls, roll in combination of cinnamon and sugar. Bake in the oven at 350°F for 12 minutes. ', 'https://www.shugarysweets.com/wp-content/uploads/2020/03/snickerdoodles-6.jpg', 45);
INSERT INTO `recipes` (`id`, `name`, `oven_temperature`, `instructions`, `image_url`, `time_to_complete`) VALUES (3, 'Chocolate Mousse', null, 'Add 14 ounces of chilled unsweetened coconut cream, 3 tablespoons of unsweetened cocoa powder, 0.25 erythritol to a blender and blend together until smooth. Chill in fridge for 20 minutes', 'https://chocolatecoveredkatie.com/wp-content/uploads/2021/02/Easy-Keto-Sugar-Free-Dessert-Chocolate-Recipe.jpg', 10);
INSERT INTO `recipes` (`id`, `name`, `oven_temperature`, `instructions`, `image_url`, `time_to_complete`) VALUES (4, 'Brownies', 350, 'Melt 0.75 cups of butter and 4 ounces of semi-sweet chocolate together at low heat. Mix in 2 cups of granulated sugar. After incorporated, fix in 3 large eggs and 2 teaspoons of vanilla extract. In a separate bowl add 1 cup of unsweetened cocoa powder and 1 cup of flour and 1 teaspoon of salt. Mix wet and dry ingredients together. Place in a pan. Bake in oven at 350°F for 32 minutes or until a toothpick comes out clean. ', 'https://sallysbakingaddiction.com/wp-content/uploads/2016/12/homemade-fudge-brownies-3.jpg', 45);
INSERT INTO `recipes` (`id`, `name`, `oven_temperature`, `instructions`, `image_url`, `time_to_complete`) VALUES (5, 'Sugar Free Coconut Flour Chocolate Chip Cookies', 350, 'Combine 0.5 cups of coconut flour and 0.25 teaspoons of baking soda. Mix together 0.5 cups of erythritol, 0.33 cups of butter, and 3 large eggs. Mix wet and dry ingredients. Add 1 cup of sugar free chocolate chips /', 'https://thebigmansworld.com/wp-content/uploads/2021/02/coconut-flour-cookies-8.jpg', 40);
INSERT INTO `recipes` (`id`, `name`, `oven_temperature`, `instructions`, `image_url`, `time_to_complete`) VALUES (6, 'Keto Pancakes', null, 'Mix together 1 cup of almond flour, 0.25 cups of coconut flour, 2 teaspoons of Monk Fruit Allulose Blend, 1 teaspoon of baking powder, 5 large eggs, 0.33 cups of unsweetened almond milk, 1/4 cup of avocado oil, 1.5 teaspoons of vanilla extract, and 0.25 teaspoons of salt. Pour into pan and cook with the lid on for 2 minutes, flip and leave uncovered. Cook for an additional 2 minutes.', 'https://www.wholesomeyum.com/wp-content/uploads/2017/03/wholesomeyum-Low-Carb-Keto-Pancakes-Recipe-20.jpg', 25);

COMMIT;

