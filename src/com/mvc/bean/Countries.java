package com.mvc.bean;

public class Countries {

public Countries(String code,String name, String continent,String region,int population, String capital )
{
this.setCode(code);
this.setName(name);
this.setContinent(continent);
this.setRegion(region);
this.setPopulation(population);
this.setCapital(capital);
}

public Countries() {
}
private String code;
private String name;
private String continent;
private String region;
private int population;
private String capital;

public void setCode(String code) {
this.code = code;
}
public String getCode() {
return code;
}

public void setName(String name) {
this.name = name;
}

public String getName() {
return name;
}

public void setContinent(String continent) {
this.continent = continent;
}

public String getContinent() {
return continent;
}

public void setRegion(String region) {
this.region = region;
}
public String getRegion() {
return region;
}

public void setPopulation(int population) {
this.population = population;
}
public int getPopulation() {
return population;
}

public void setCapital(String capital) {
this.capital = capital;
}

public String getCapital() {
return capital;
}
}