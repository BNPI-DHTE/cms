package hu.delheves.cms.elements;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.util.List;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Article {

    private Long id;

    private String title;

    private Set<Author> authors;

    private LocalDate date;

    private String summary;

    private Set<Element> elements;

}
