package hu.delheves.cms.elements;

import java.util.Set;

public interface Element {

    Long getId();

    Set<Author> getAuthors();

    String getDescription();

    Article getArticle();

    int getRank();
}
