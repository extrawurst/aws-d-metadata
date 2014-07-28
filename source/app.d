import std.stdio;

import awsd.metadata;

shared static this()
{
	writeln("Edit source/app.d to start your project.");

	writeln("%s", GetAwsData("/latest/meta-data/"));
	writeln("%s", GetAwsData("/latest/meta-data/instance-id"));
}
