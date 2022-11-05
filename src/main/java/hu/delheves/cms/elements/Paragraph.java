package hu.delheves.cms.elements;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Paragraph implements Element {

    private Long id;

    private Set<Author> authors;

    private String description;

    private Article article;

    private int rank;
}
