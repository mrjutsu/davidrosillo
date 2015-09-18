#CREATE CATEGORIES

categories = [
	{ name: "Life" },
	{ name: "How To" },
	{ name: "Games" },
	{ name: "Opinion" },
]

Category.create( categories )

#CREATE PORTFOLIO CATEGORIES

p_cats = [
	{ name: "Gem" },
	{ name: "Javascript" },
	{ name: "Ruby" },
	{ name: "HTML" },
	{ name: "CSS" },
	{ name: "Android" },
	{ name: "iOS" },
]

PortfolioCategory.create( p_cats )
