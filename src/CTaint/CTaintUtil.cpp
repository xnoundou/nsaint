/*
 * CTaintUtil.cpp
 *
 *  Created on: 2013-10-22
 *      Author: noundou
 */

#include "CTaintUtil.h"


vector<string> CTaintUtil::_taintSources;

void CTaintUtil::readConfig() {
	//Open the file with taint source functions listed
	std::ifstream srcFile(_taintSourceFile.c_str());
	string aSource;

	while (!srcFile.eof()) {
		std::getline(srcFile, aSource);
		if (!aSource.empty()) {
			_taintSources.push_back(aSource);
			log("[CTaintUtil] taint source " + aSource);
		}
	}

	srcFile.close();
}


