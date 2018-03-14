import "phoenix_html";
import React from "react";
import { render } from "react-dom";
import styled from "styled-components";

export const Title = styled.h1`
  color: ${props => (props.primary ? "magenta" : "black")};
`;

Title.displayName = "Title";

export default Title;
