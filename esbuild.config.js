const minimist = require("minimist");
const fs = require("fs");
const esbuild = require("esbuild");
const browserslist = require("browserslist");
const { esbuildPluginBrowserslist } = require("esbuild-plugin-browserslist");

const production = process.env.RAILS_ENV === "production";

const { _: entryPoints, o: outdir, watch } = minimist(process.argv.slice(2));

esbuild.build({
  entryPoints,
  outdir,
  bundle: true,
  sourcemap: true,
  minify: production,
  watch,
  plugins: [
    esbuildPluginBrowserslist(browserslist("defaults"), {
      printUnknownTargets: false,
    }),
  ],
});
