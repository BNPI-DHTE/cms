package hu.delheves.cms.elements;

import jakarta.persistence.Entity;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.PrimaryKeyJoinColumn;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "images")
@PrimaryKeyJoinColumn(name = "element_id")
public class Image extends Element {

    @ManyToMany(mappedBy = "images")
    private Set<Author> authors;

    private String description;
}
