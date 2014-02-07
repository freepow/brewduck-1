package com.brewduck.web.style.dao;

import com.brewduck.web.domain.Style;

import java.util.List;

public interface StyleDao {

    public List<Style> getSelectList(Style style);

    public Style getSelectStyleView(Style style);
}
