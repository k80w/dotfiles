#!/bin/node

const Color = require("color");
const yaml = require("js-yaml");
yaml.edit = require("yaml-update").edit;

process.stdin.setEncoding("utf8");

let raw = "";

process.stdin.on("data", chunk => {
	raw += chunk;
});

process.stdin.on("end", () => {
	let data = yaml.safeLoad(raw);

	const rotate = data["rotate"] || 0;

	for (let i = 0; i < 16; i++) {
		const key = "base0" + i.toString(16).toUpperCase();
		const color = new Color(data[key] || "#000000");
		data[key] = color.rotate(rotate).hex();
	}

	process.stdout.write(yaml.edit(raw, JSON.stringify(data)));
});

