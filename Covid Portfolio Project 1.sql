create database PortfolioProject;
use PortfolioProject;

#----------------------CovidVaccination Table----------------------------------------------------

 CREATE TABLE CovidVaccination (
    iso_code VARCHAR(25),
    continent VARCHAR(255),
    location VARCHAR(255),
    date_col DATE,
    new_tests BIGINT NULL,
    total_tests BIGINT NULL,
    total_tests_per_thousand FLOAT NULL,
    new_tests_per_thousand FLOAT NULL,
    new_tests_smoothed FLOAT NULL,
    new_tests_smoothed_per_thousand FLOAT NULL,
    positive_rate FLOAT NULL,
    tests_per_case FLOAT NULL,
    tests_units VARCHAR(50),
    total_vaccinations BIGINT NULL,
    people_vaccinated BIGINT NULL,
    people_fully_vaccinated BIGINT NULL,
    new_vaccinations BIGINT NULL,
    new_vaccinations_smoothed BIGINT NULL,
    total_vaccinations_per_hundred FLOAT NULL,
    people_vaccinated_per_hundred FLOAT NULL,
    people_fully_vaccinated_per_hundred FLOAT NULL,
    new_vaccinations_smoothed_per_million BIGINT NULL,
    stringency_index FLOAT NULL,
    population_density FLOAT NULL,
    median_age FLOAT NULL,
    aged_65_older FLOAT NULL,
    aged_70_older FLOAT NULL,
    gdp_per_capita FLOAT NULL,
    extreme_poverty FLOAT NULL,
    cardiovasc_death_rate FLOAT NULL,
    diabetes_prevalence FLOAT NULL,
    female_smokers FLOAT NULL,
    male_smokers FLOAT NULL,
    handwashing_facilities FLOAT NULL,
    hospital_beds_per_thousand FLOAT NULL,
    life_expectancy VARCHAR(255),
    human_development_index FLOAT NULL);
    
    alter table CovidVaccination
    modify column human_development_index varchar(255);


#-----------------------Loading CSV Files into table---------------------------------

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Data/portfolioproject/CovidVaccinations.csv'
INTO TABLE CovidVaccination
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n'  
IGNORE 1 ROWS
(@iso_code,@continent,@location,@date_col,@new_tests,@total_tests,@total_tests_per_thousand,@new_tests_per_thousand,@new_tests_smoothed,@new_tests_smoothed_per_thousand,@positive_rate,@tests_per_case,@tests_units,@total_vaccinations,@people_vaccinated,@people_fully_vaccinated,@new_vaccinations,@new_vaccinations_smoothed,@total_vaccinations_per_hundred,@people_vaccinated_per_hundred,@people_fully_vaccinated_per_hundred,@new_vaccinations_smoothed_per_million,@stringency_index,@population_density,@median_age,@aged_65_older,@aged_70_older,@gdp_per_capita,@extreme_poverty,@cardiovasc_death_rate,@diabetes_prevalence,@female_smokers,@male_smokers,@handwashing_facilities,@hospital_beds_per_thousand,@life_expectancy,@human_development_index) 
SET 
iso_code = NULLIF(@iso_code, ''),  
continent = NULLIF(@continent, ''),   
location = NULLIF(@location, ''),   
date_col = NULLIF(@date_col, ''),    
new_tests = NULLIF(@new_tests, ''),   
total_tests = NULLIF(@total_tests, ''),   
total_tests_per_thousand = NULLIF(@total_tests_per_thousand, ''),    
new_tests_per_thousand = NULLIF(@new_tests_per_thousand, ''),   
new_tests_smoothed = NULLIF(@new_tests_smoothed, ''),   
new_tests_smoothed_per_thousand = NULLIF(@new_tests_smoothed_per_thousand, ''),   
positive_rate = NULLIF(@positive_rate, ''),   
tests_per_case = NULLIF(@tests_per_case, ''),   
tests_units = NULLIF(@tests_units, ''),   
total_vaccinations = NULLIF(@total_vaccinations, ''),   
people_vaccinated = NULLIF(@people_vaccinated, ''),   
people_fully_vaccinated = NULLIF(@people_fully_vaccinated, ''),   
new_vaccinations = NULLIF(@new_vaccinations, ''),    
new_vaccinations_smoothed = NULLIF(@new_vaccinations_smoothed, ''),   
total_vaccinations_per_hundred = NULLIF(@total_vaccinations_per_hundred, ''),   
people_vaccinated_per_hundred = NULLIF(@people_vaccinated_per_hundred, ''),   
people_fully_vaccinated_per_hundred = NULLIF(@people_fully_vaccinated_per_hundred, ''),   
new_vaccinations_smoothed_per_million = NULLIF(@new_vaccinations_smoothed_per_million , ''),   
stringency_index = NULLIF(@stringency_index, ''),   
population_density = NULLIF(@population_density, ''),   
median_age = NULLIF(@median_age, ''),   
aged_65_older = NULLIF(@aged_65_older, ''),   
aged_70_older = NULLIF(@aged_70_older, ''),   
gdp_per_capita = NULLIF(@gdp_per_capita, ''),   
extreme_poverty = NULLIF(@extreme_poverty, ''),   
cardiovasc_death_rate = NULLIF(@cardiovasc_death_rate, ''),   
diabetes_prevalence = NULLIF(@diabetes_prevalence, ''),   
female_smokers = NULLIF(@female_smokers, ''),   
male_smokers = NULLIF(@male_smokers, ''),   
handwashing_facilities = NULLIF(@handwashing_facilities, ''),   
hospital_beds_per_thousand = NULLIF(@hospital_beds_per_thousand, ''),   
life_expectancy = NULLIF(@life_expectancy,''),   
human_development_index = NULLIF(@human_development_index, '');

select * from COvidVaccination;

#------------------------CovidDeaths Tabale-------------------------------------

create table CovidDeaths (
iso_code varchar(25),	
continent varchar(25),	
location varchar(255),	
date_col date,	
total_cases	bigint null,
new_cases bigint null,	
new_cases_smoothed	float null,
total_deaths bigint null,	
new_deaths bigint null,
new_deaths_smoothed	float null,
total_cases_per_million	float null,
new_cases_per_million float null,
new_cases_smoothed_per_million	float null,
total_deaths_per_million float null,
new_deaths_per_million	float null,
new_deaths_smoothed_per_million	float null,
reproduction_rate float null,
icu_patients bigint null,	
icu_patients_per_million float null,
hosp_patients bigint null,
hosp_patients_per_million float null,
weekly_icu_admissions	float null,
weekly_icu_admissions_per_million	float null,
weekly_hosp_admissions	float null,
weekly_hosp_admissions_per_million	float null,
new_tests	bigint null,
total_tests	bigint null,
total_tests_per_thousand float null,
new_tests_per_thousand bigint null,
new_tests_smoothed float null,
new_tests_smoothed_per_thousand	float null,
positive_rate float null,	
tests_per_case float null,
tests_units	varchar(250),
total_vaccinations bigint null,
people_vaccinated bigint null,
people_fully_vaccinated	bigint null,
new_vaccinations bigint null,
new_vaccinations_smoothed bigint null,
total_vaccinations_per_hundred float null,		
people_vaccinated_per_hundred float null,	
people_fully_vaccinated_per_hundred	float null,	
new_vaccinations_smoothed_per_million bigint null,
stringency_index float null,
population bigint null,
population_density	float null,
median_age	float null,
aged_65_older float null,
aged_70_older float null,
gdp_per_capita float null,
extreme_poverty	float null,
cardiovasc_death_rate float null,
diabetes_prevalence	float null,
female_smokers float null,
male_smokers float null,
handwashing_facilities float null,
hospital_beds_per_thousand	float null,
life_expectancy	varchar(255));

#-----------------------Loading CSV Files into table---------------------------------

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Data/portfolioproject/CovidDeaths.csv'
INTO TABLE CovidDeaths 
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n'  
IGNORE 1 ROWS
( @iso_code, @continent, @location, @date_col, @total_cases, @new_cases, @new_cases_smoothed,@total_deaths,@new_deaths, @new_deaths_smoothed, @total_cases_per_million, @new_cases_per_million, @new_cases_smoothed_per_million, @total_deaths_per_million, @new_deaths_per_million, @new_deaths_smoothed_per_million, @reproduction_rate, @icu_patients, @icu_patients_per_million, @hosp_patients, @hosp_patients_per_million, @weekly_icu_admissions, @weekly_icu_admissions_per_million, @weekly_hosp_admissions, @weekly_hosp_admissions_per_million, @new_tests, @total_tests, @total_tests_per_thousand, @new_tests_per_thousand, @new_tests_smoothed, @new_tests_smoothed_per_thousand, @positive_rate, @tests_per_case, @tests_units, @total_vaccinations, @people_vaccinated, @people_fully_vaccinated, @new_vaccinations, @new_vaccinations_smoothed, @total_vaccinations_per_hundred, @people_vaccinated_per_hundred, @people_fully_vaccinated_per_hundred, @new_vaccinations_smoothed_per_million, @stringency_index, @population, @population_density, @median_age, @aged_65_older, @aged_70_older, @gdp_per_capita, @extreme_poverty, @cardiovasc_death_rate, @diabetes_prevalence, @female_smokers, @male_smokers, @handwashing_facilities, @hospital_beds_per_thousand, @life_expectancy)
SET iso_code = NULLIF(@iso_code, ''),
    continent = NULLIF(@continent, ''),
    location = NULLIF(@location, ''),
    date_col = NULLIF(@date_col, ''),
    total_cases = NULLIF(@total_cases, ''),
    new_cases = NULLIF(@new_cases, ''),
    new_cases_smoothed = NULLIF(@new_cases_smoothed, ''),
    new_deaths = NULLIF(@new_deaths, ''),
    new_deaths_smoothed = NULLIF(@new_deaths_smoothed, ''),
    total_deaths = NULLIF(@total_deaths, ''),
    total_cases_per_million = NULLIF(@total_cases_per_million, ''),
    new_cases_per_million = NULLIF(@new_cases_per_million, ''),
    new_cases_smoothed_per_million = NULLIF(@new_cases_smoothed_per_million, ''),
    total_deaths_per_million = NULLIF(@total_deaths_per_million, ''),
    new_deaths_per_million = NULLIF(@new_deaths_per_million, ''),
    new_deaths_smoothed_per_million = NULLIF(@new_deaths_smoothed_per_million, ''),
    reproduction_rate = NULLIF(@reproduction_rate, ''),
    icu_patients = NULLIF(@icu_patients, ''),
    icu_patients_per_million = NULLIF(@icu_patients_per_million, ''),
    hosp_patients = NULLIF(@hosp_patients, ''),
    hosp_patients_per_million = NULLIF(@hosp_patients_per_million, ''),
    weekly_icu_admissions = NULLIF(@weekly_icu_admissions, ''),
    weekly_icu_admissions_per_million = NULLIF(@weekly_icu_admissions_per_million, ''),
    weekly_hosp_admissions = NULLIF(@weekly_hosp_admissions, ''),
    weekly_hosp_admissions_per_million = NULLIF(@weekly_hosp_admissions_per_million, ''),
    new_tests = NULLIF(@new_tests, ''),
    total_tests = NULLIF(@total_tests, ''),
    total_tests_per_thousand = NULLIF(@total_tests_per_thousand, ''),
    new_tests_per_thousand = NULLIF(@new_tests_per_thousand, ''),
    new_tests_smoothed = NULLIF(@new_tests_smoothed, ''),
    new_tests_smoothed_per_thousand = NULLIF(@new_tests_smoothed_per_thousand, ''),
    positive_rate = NULLIF(@positive_rate, ''),
    tests_units = NULLIF(@tests_units, ''),
    tests_per_case = NULLIF(@tests_per_case, ''),
    total_vaccinations = NULLIF(@total_vaccinations, ''),
    people_vaccinated = NULLIF(@people_vaccinated, ''),
    people_fully_vaccinated = NULLIF(@people_fully_vaccinated, ''),
    new_vaccinations = NULLIF(@new_vaccinations, ''),
    new_vaccinations_smoothed = NULLIF(@new_vaccinations_smoothed, ''),
    total_vaccinations_per_hundred = NULLIF(@total_vaccinations_per_hundred, ''),
    people_vaccinated_per_hundred = NULLIF(@people_vaccinated_per_hundred, ''),
    people_fully_vaccinated_per_hundred = NULLIF(@people_fully_vaccinated_per_hundred, ''),
    new_vaccinations_smoothed_per_million = NULLIF(@new_vaccinations_smoothed_per_million, ''),
    stringency_index = NULLIF(@stringency_index, ''),
    population = NULLIF(@population, ''),
    population_density = NULLIF(@population_density, ''),
    median_age = NULLIF(@median_age, ''),
    aged_65_older = NULLIF(@aged_65_older, ''),
    aged_70_older = NULLIF(@aged_70_older, ''),
    gdp_per_capita = NULLIF(@gdp_per_capita, ''),
    extreme_poverty = NULLIF(@extreme_poverty, ''),
    cardiovasc_death_rate = NULLIF(@cardiovasc_death_rate, ''),
    diabetes_prevalence = NULLIF(@diabetes_prevalence, ''),
    female_smokers = NULLIF(@female_smokers, ''),
    male_smokers = NULLIF(@male_smokers, ''),
    handwashing_facilities = NULLIF(@handwashing_facilities, ''),
    hospital_beds_per_thousand = NULLIF(@hospital_beds_per_thousand, ''),
    life_expectancy = NULLIF(@life_expectancy, '');

    
select * from CovidDeaths 
where continent is not null ;
 
 select count(*)
 from information_schema.columns
 where table_schema = 'PortfolioProject'
 and table_name = 'CovidVaccination';
 
#selecting the data that we are going to use

select Location, date_col, total_cases, new_cases, total_deaths, population
from CovidDeaths
order by 1, 2;


#### Looking at Total Cases vs Total Deaths
## Shows likelihood of dying if you contract in your country

select Location, date_col, total_cases, total_deaths, 
(total_deaths/total_cases)*100 as DeathPercentage 
from CovidDeaths
where location like '%states'
order by 1, 2;

## Looking at Total Cases vs Population
## Shows what percentage of population got Covid

select Location, date_col,  population, total_cases,  (total_cases/population) * 100 as PercentPopulationinfected
from CovidDeaths
where location like '%states'
order by 1, 2;

## looking at countries with highest infection rate compared to population

Select Location, population , 
max(total_cases) as HighestInfectionCount,  max((total_cases/population)) * 100 as PercentPopulationInfected 
from CovidDeaths
#where location like '%states'
group by Location, population
order by  PercentPopulationInfected desc;


#showing countries with highest death count per population

Select Location, MAX(total_deaths) as TotalDeathCount
from CovidDeaths
#where location like '%states'
where continent is not null
group by Location
order by TotalDeathCount  desc;


#LET'S BREAK THINGS DOWN BY CONTINENT

#Showing the continent with the highest death count per population

Select continent, MAX(total_deaths) as TotalDeathCount
from CovidDeaths
#where location like '%states'
where continent is not null
group by continent
order by TotalDeathCount  desc;

#GLOBAL NUMBERS

select sum(new_cases) as total_cases, sum(new_deaths) as total_deaths, (sum(new_deaths)/sum(new_cases) )* 100 as DeathsPercentage
from CovidDeaths
where continent is not null
#group by date_col
order by 1, 2 ;

#---------------- Looking at Total Population vs Vaccination-------------------- 

SELECT cd.continent, cd.location,cd.date_col, cd.Population, cv.new_vaccinations,
SUM(cv.new_vaccinations) OVER (partition by cd.location order by cd.location, cd.date_col) as RollingPeopleVaccinated
FROM CovidDeaths AS cd
JOIN CovidVaccination AS cv
 ON cd.Location = cv.Location
 and cd.date_col= cv.date_col
 WHERE cd.continent is not null
 order by 2,3;

 
select cd.continent, cd.location , cv.new_vaccinations, cd.date_col
 from CovidDeaths as cd
join CovidVaccination as cv
 on cd.Location = cv.Location
 and cd.date_col= cv.date_col
 where cd.continent = 'North America' 
 and cd.location = 'Canada';
 
 
with PopvsVac  (Continent, Location, date_col, Population, Nem_Vaccinations, RollingPeopleVaccinated)
as
(
SELECT cd.continent, cd.location,cd.date_col, cd.Population, cv.new_vaccinations,
SUM(cv.new_vaccinations) OVER (partition by cd.location order by cd.location, cd.date_col) as RollingPeopleVaccinated
FROM CovidDeaths AS cd
JOIN CovidVaccination AS cv
 ON cd.Location = cv.Location
 and cd.date_col= cv.date_col
 WHERE cd.continent is not null
 )
 select *,( RollingPeopleVaccinated/Population) * 100
 from PopvsVac;
 
 ##
DROP TABLE IF EXISTS PercentPopulationVaccinated;

CREATE TABLE PercentPopulationVaccinated (
    Continent VARCHAR(255),
    Location VARCHAR(255),
    Date_col DATE,
    Population NUMERIC,
    Newccination NUMERIC,
    RollingPeopleVaccinated NUMERIC
);


INSERT INTO PercentPopulationVaccinated
SELECT
    cd.continent,
    cd.location,
    cd.date_col,
    cd.population,
    cv.new_vaccinations,
    SUM(cv.new_vaccinations) OVER (PARTITION BY cd.location ORDER BY cd.location, cd.date_col) AS RollingPeopleVaccinated
FROM
    CovidDeaths AS cd
JOIN
    CovidVaccination AS cv ON cd.Location = cv.Location AND cd.date_col = cv.date_col;

SELECT
    *,
    (RollingPeopleVaccinated / Population) * 100 AS PercentageVaccinated
FROM
    PercentPopulationVaccinated;

 #creating view to store for later visualization
 

CREATE VIEW NewPercentPopulationVaccinated AS
SELECT cd.continent, cd.location, cd.date_col, cd.population, cv.new_vaccinations, SUM(cv.new_vaccinations) OVER (PARTITION BY cd.location ORDER BY cd.location, cd.date_col) AS RollingPeopleVaccinated
FROM CovidDeaths AS cd
JOIN CovidVaccination AS cv ON cd.Location = cv.Location AND cd.date_col = cv.date_col
WHERE cd.continent IS NOT NULL;

    
  SELECT * from PercentPopulationVaccinated;

  SELECT * from  NewPercentPopulationVaccinated ;


 

  









