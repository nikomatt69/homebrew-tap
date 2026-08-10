# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-10T19:58:10.255Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.263.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.263.0/nikcli-ai-darwin-x64.zip"
      sha256 "df574b5a0dbec097ab6734e6bf5becef6e48864ce24e1c70d3f8dd53cbea3723"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.263.0/nikcli-ai-darwin-arm64.zip"
      sha256 "23a1d47f588dd9437ea9ac2b08758d3efe46273002c6d78a4e2b7eafa14bb98c"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.263.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "f4762622c2cbaea701536b774fae1123f260a0a294123a7a32b594517c448422"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.263.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "56d2956e37d0481701b3707888021bb5780c62c9ac84fa23fae380ab65a58361"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

